# 프론트 컨트롤러 패턴 소개

### 프론트 컨트롤러 도입전

- 한개의 URL에 한개의 서블릿이 매핑되는 구조
    - 서블릿을 구현할때 마다 중복되는 코드가 발생했다
    - 예) 서블릿에서 처리한 결과를 JSP에 넘기기위해 RequestDispatcher에 Forward 해주는 로직
- 입구가 없다
- 따라서 공통로직을 모든 컨트롤러에 넣어줘야 한다

## FrontController 패턴

- FrontController에 공통 로직을 넣어준다
- 즉 , 공통관심라를 별도로 모은다
- 나머지 컨트롤러는 FrontController를 통해 호출된다

### FrontController 패턴 특징

- 프론트컨트롤러 서블릿 하나로 클라이언트의 요청을 받는다
- 프론트컨트롤러가 서블릿 요청을 다 받는다
- 프론트컨트롤러가 요청에 맞는 컨트롤러를 찾아 호출해 준다
- 공통 처리가 가능해 진다
- 프론트컨트롤러를 제외한 나머지 컨트롤러는 서블릿을 사용하지 않아도 된다
    - 나머지 컨트롤러는 서블릿으로 만들 필요가 없다
    - 왜? 프론트컨트롤러가 servlet 역할을 해주기 때문

---

![https://blog.kakaocdn.net/dn/dRnD4G/btqBuQ2Yr1G/cXe25ZG5BRlSRQlcObb8Vk/img.png](https://blog.kakaocdn.net/dn/dRnD4G/btqBuQ2Yr1G/cXe25ZG5BRlSRQlcObb8Vk/img.png)

### **Front Controller 패턴이란?**

- 하나의 Servlet에서 모든 요청을 받아서 적절한 Controller로 요청을 위임해주는 것을 말한다.
- 서블릿 컨테이너의 제일 앞에서 서버로 들어오는 클라이언트의 모든 요청을 받아서 처리해주는 컨트롤러

### FrontController 등장배경

- 사용자의 요청을 servelt에게 전달하기 위해 web.xml에 servlet을 등록하고 mapping 하는 과정이 필요하다
- 수많은 요청이 필요한 경우 불편하기 때문에 이를 해결하기 위해 FrontController  가 등장 하였다
- 서블릿 컨테이너의 제일 앞에서 서버로 들어오는 클라이언트의 모든 요청을 받아서 처리해주는 컨트롤러

### **Front-Controller 장점**

- 모든 요청(Request)를 하나의 컨트롤러(Controller)를 통해 작업을 한 곳에서 수행할 수 있다.
- 추적(Tracking)이나 보안(Security)를 적용할 때 하나의 컨트롤러(Controller)에 하기 때문에 편하다.
- 파일 구조가 바뀌어도 URL을 유지할 수 있다.

### spring web MVC와 FrontController

- spring mvc가 FrontController이다
- spring mvc의 DispatcherServlet이 FrontController로 구현되어 있다
- `DispatcherServlet` : spring mvc에서 프론트컨트롤러 패턴을 구현한 servlet
    - 받은 요청을 어딘가로 보내주는 서블릿 (FrontController)

참고 - 

[https://nesoy.github.io/articles/2017-02/Front-Controller](https://nesoy.github.io/articles/2017-02/Front-Controller)

[https://kjh95.tistory.com/312](https://kjh95.tistory.com/312)

[sally의 프로그래밍 공부 :: [Spring/MVC] SpringMVC 프로젝트 구조 분석 / Front Controller 패턴 / 예시 (tistory.com)](https://sallykim5087.tistory.com/153)

[https://yoonbing9.tistory.com/79](https://yoonbing9.tistory.com/79)

[https://velog.io/@seculoper235/2.-DispatcherServlet-이란](https://velog.io/@seculoper235/2.-DispatcherServlet-%EC%9D%B4%EB%9E%80)