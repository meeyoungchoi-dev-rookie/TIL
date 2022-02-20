# 프론트 컨트롤러 도입 - v1

## 프론트컨트롤러 도입

- 기존 코드를 유지하면서 프론트 컨트롤러 도입
- 먼저 구조를 맞춘다

### v1 구조

![스크린샷(390).png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/bbaa5bff-161f-4944-94f4-f1bd603c0288/스크린샷(390).png)

### v1 구조 핵심

- HTTP 요청이 들어오면 FrontController가 받는다
- 매핑 정보 - FrontController는 URL 정보를 보고 해당 컨트롤러로 매핑시킨다
- 컨트롤러가 JSP 페이지를 포워딩 해준다

#### **1. ControllerV1 인터페이스 생성**

- process 메서드를 선언한다
- HttpServletRequest 객체와 HttpServletResponse 객체를 파라미터로 받는다
- 왜 이러한 구조로 만드는가?
    - 요청이 들어오면 servlet의 servie메서드가 요청을 받아 처리후 html을 포워딩해주기 때문

#### 2. 컨트롤러 클래스 생성 - ControllerV1 인터페이스를 구현

- `MemberFormControllerV1`
    - process 메서드를 오버라이딩 한다
    - 요청이 들어오면 new-form.jsp 로 포워딩 된다

- `MemberListControllerV1`
    - process 메서드를 오버라이딩 한다
    - 요청이 들어오면 memberRepository에서 데이를 가져온후 List에 담는다
    - members.jsp 로 포워딩 된다

- `MemberSaveControllerV1`
    - process 메서드를 오버라이딩 한다
    - request 객체에서 userName과 age 데이터를 꺼낸다
    - Member 객체를 생성한다
    - meberRepository를 통해 Map에 Member 객체를 저장한다
    - save-result.jsp로 포워딩 된다
    

#### 3. HttpServlet을 상속받은 FrontControllerServletV1 클래스를 생성한다

- 해당 클래스가 FrontController 역할을 한다
- `/front-controller/v1/*`
    - /front-controller/v1/ 하위로 들어오는 모든 요청을 받는다

- Map - 요청 URL과 요청을 처리할 컨트롤러 객체를 담고 있다

```java
private Map<String, ControllerV1> controllerV1Map = new HashMap<>();

public FronControllerServletV1() {
    controllerV1Map.put("/front-controller/v1/members/new-form", new MemberFormControllerV1());
    controllerV1Map.put("/front-controller/v1/members/save", new MemberSaveControllerV1());
    controllerV1Map.put("/front-controller/v1/members", new MemberListControllerV1());
}
```

- service 메서드가 각 요청에 맞는 컨트롤러로 요청에 대한 처리를 위임한다
    - `request.getRequestURI`  → HTTP 요청 경로를 가져온다
    - 예) /front-controller/v1/members/new-form
    
    - `ControllerV1 controller = controllerV1Map.get(requestURI);`
        
        requestURI를 key값으로 사용하여 Value 값을 Map에서 찾는다
        
        - 즉  , 해당 요청을 처리할 컨트롤러를 찾는다
        - 만약 컨트롤러를 찾지 못한 경우 404 상태코드를 반환한다
        - 즉 , 해당 요청을 처리할 컨트롤러가 없다는 의미이다
        - 각 컨트롤러가 오버라이딩 한 process 메서드를 호출하여 service 로직을 실행한다
        - 뷰페이지를 포워딩 해준다
        

```java
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    System.out.println("FronControllerServletV1.service");

    String requestURI = request.getRequestURI();

    ControllerV1 controller = controllerV1Map.get(requestURI);

    if (controller == null) {
        response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        return;
    }

    controller.process(request, response);
}
```