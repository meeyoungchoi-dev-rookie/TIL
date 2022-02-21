# 컨트롤러에서 뷰로 이동하는 코드에 중복이 있다

- 아래의 코드를 깔끔하게 분리하기 위해 별도로 뷰를 처리하는 객체를 만든다

```java
String viewPath = "/WEB-INF/views/save-result.jsp";
RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
dispatcher.forward(request, response);
```

## V2구조

- FrontController가 HTTP 요청을 받는다
- URL 매핑정보를 참고하여 컨트롤러를 호출한다
- 뷰페이지를 반봔해주기 위해 MyView 클래스를 생성한다
- render 메서드를 통해 view 경로로 포워딩 된다



### MyView

- 생성자의 파라미터로 view 경로를 받는다 (viewPath)
- render 메서드를 통해 해당 경로롤 포워딩 된다

```java
public class MyView {
    private String viewPath;

    public MyView(String viewPath) {
        this.viewPath = viewPath;
    }

    public void render(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
        dispatcher.forward(request , response);
    }

}
```

### VIEW를 분리하기 전과 분리하고 난 후

`기존 버전`

- view 경로를 ReqeustDispatcher 클래스의 forward 메서드를 호출하여 서블릿이 직접 포워딩 시켜준다
    - 서블릿에서 클라이언트를 거치지 않고 바로 다른 서블릿에게 요청한다

```java
public class MemberFormControllerV1 implements ControllerV1 {

    @Override
    public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String viewPath = "/WEB-INF/views/new-form.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
        dispatcher.forward(request , response);
    }
}
```

`바뀐 버전`

- FrontControllerServletV2 클래스가 `/front-controller/v2/*`
- 하위 경로로 요청이 들어오면 Map에서 각 경로에 맞는 컨트롤러를 호출해 준다
    - 컨트롤러를 호출할때 key를 사용하여 해당 key를 갖고 있는 컨트롤러를 호출한다
        
        ```java
           private Map<String, ControllerV2> controllerV1Map = new HashMap<>();  
        
           public FronControllerServletV2() {
                controllerV1Map.put("/front-controller/v2/members/new-form", new MemberFormControllerV2());
                controllerV1Map.put("/front-controller/v2/members/save", new MemberSaveControllerV2());
                controllerV1Map.put("/front-controller/v2/members", new MemberListControllerV2());
            }
        
        ```
        
- Map의 value 타입이 인터페이스 타입이다
    - 인터페이스 타입으로 선언한 이유
    - 왜? 현재는 jsp 만 사용하지만 추후 다른 view 템플릿도 사용하게 된다면
    - 인터페이스를 갈아끼워주면 된다
    - 즉 , 다형성이 보장된다

```java
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    System.out.println("FronControllerServletV2.service");

    String requestURI = request.getRequestURI();
    System.out.println("requestURI: " + requestURI);

    ControllerV2 controller = controllerV1Map.get(requestURI);

    if (controller == null) {
        response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        return;
    }

    MyView view = controller.process(request, response);
    view.render(request, response);
}
```

- 뷰페이지를 렌더링 해주기 위해 MyView 객체를 생성후 파라미터로 viewPath 경로를 넣어준다

```java
public class MemberFormControllerV2 implements ControllerV2 {
    @Override
    public MyView process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return new MyView("/WEB-INF/views/new-form.jsp");
    }
}
```

- MyView 클래스를 생성한다
- render 메서드를 통해 view 경로로 포워딩 시켜준다

```java
public class MyView {
    private String viewPath;

    public MyView(String viewPath) {
        this.viewPath = viewPath;
    }

    public void render(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(viewPath);
        dispatcher.forward(request , response);
    }

}
```

- FrontControllerServlet 전체 코드

```java
@WebServlet(name = "FrontControllerServletV2", urlPatterns = "/front-controller/v2/*")
public class FronControllerServletV2 extends HttpServlet {

    private Map<String, ControllerV2> controllerV1Map = new HashMap<>();

    public FronControllerServletV2() {
        controllerV1Map.put("/front-controller/v2/members/new-form", new MemberFormControllerV2());
        controllerV1Map.put("/front-controller/v2/members/save", new MemberSaveControllerV2());
        controllerV1Map.put("/front-controller/v2/members", new MemberListControllerV2());
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("FronControllerServletV2.service");

        String requestURI = request.getRequestURI();
        System.out.println("requestURI: " + requestURI);

        ControllerV2 controller = controllerV1Map.get(requestURI);

        if (controller == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        MyView view = controller.process(request, response);
        view.render(request, response);
    }
}
```

참고 - 

[https://pooney.tistory.com/31](https://pooney.tistory.com/31)