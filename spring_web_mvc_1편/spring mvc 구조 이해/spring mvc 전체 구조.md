# 스프링 MVC 전체 구조

**직접 만든 MVC 프레임워크 구조**

![m](https://user-images.githubusercontent.com/42866800/156534500-5a91e34a-7f37-487e-a55a-9976c3c4d25d.png)


**spring MVC 구조**

![s](https://user-images.githubusercontent.com/42866800/156534403-aba4fee8-babe-4ff2-befc-3f143dd3cfac.png)
### 직접 만든 프레임워크 → MVC 비교

- FrontController   → DispatcherServlet
- handlerMappingMap  → HandlerMapping
- MyHandlerAdapter → HandlerAdapter
- ModelView → ModelAndView
- viewResolver → ViewResolver (spring은 ViewResolver를 더 확장성 있게 인터페이스로 만들어 놨다)
- MyView → View (spring은 View를 인터페이스로 만들어 놨다)

## DispatcherServlet

- spring mvc도 프론트 컨트롤러 패턴으로 구현되어 있다
- spring mvc의 프론트 컨트롤러가 디스패처 서블릿 (DispatcherServlet)이다
- 디스패처 서블릿이 스프링 mvc의 핵심이다

### DispatcherServlet 구조

- DispatcherServlet도 Servlet이다
- DispatcherServlet 클래스가 HttpServlet을 상속받고 있다
    - DispatcherServlet → FrameworkServlet → HttpServletBean → HttpServlet

```java
public class DispatcherServlet extends FrameworkServlet {
}

public abstract class FrameworkServlet extends HttpServletBean {
}

public abstract class HttpServletBean extends HttpServlet {
}
```

### DispatcherServlet 등록

- spring boot에서는 java config를 사용하여 서블릿을 등록한다
- spring boot에서는 기본으로 DispatcherServlet이 등록되어 있다
    - spring boot는 spring mvc를 사용하여 웹 애플리케이션을 개발하기 위한 spring boot starter web 라이브러리를 제공한다
    - 해당 라이브러리에 의해 DispatcherServlet이 자동으로 등록되고 실행된다
    - 따라서 , DispatcherServlet을 수동으로 등록할 필요가 없다

### DispatcherServlet 요청 흐름

- 서블릿이 호출되면 HttpServlet이 제공하는 service()가 호출된다
    - spring mvc는 DispatcherServlet이 상속받은 FrameworkServlet의 service 메서드를 오버라이딩 해뒀다
    - service 메서드를 통해 doDispatch 메서드가 호출된다
    - [10. 서블릿 객체의 생명주기](https://www.notion.so/10-4bafc399cd444c6d8a10ddb9c4677c2a)

<aside>
📌 메서드 내부가 길어 핵심적인 내용만 정리 하였다

</aside>

```java
protected void doDispatch(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpServletRequest processedRequest = request;
		HandlerExecutionChain mappedHandler = null;
		boolean multipartRequestParsed = false;
    ...
    ...
    ...

		// 1. 핸들러 조회
		mappedHandler = getHandler(processedRequest);

    if (mappedHandler == null) {
			noHandlerFound(processedRequest, response);
			return;
		}

		// 2. 핸들러 어댑터 조회 - 핸들러를 처리할 수 있는 어댑터 조회
		HandlerAdapter ha = getHandlerAdapter(mappedHandler.getHandler());

    ...
    ...
    ...

    // 3. 핸들러 어댑터를 실행하여 핸들러를 실행한다
		mv = ha.handle(processedRequest, response, mappedHandler.getHandler());

    ...
    ...

}

protected View resolveViewName(String viewName, @Nullable Map<String, Object> model,
		Locale locale, HttpServletRequest request) throws Exception {

	if (this.viewResolvers != null) {
		for (ViewResolver viewResolver : this.viewResolvers) {
			View view = viewResolver.resolveViewName(viewName, locale);
			if (view != null) {
				return view;
			}
		}
	}
	return null;
}

protected void render(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws Exception {

     ...
     ...
     view.render(mv.getModelInternal(), request, response);
     ...
     ...
}

```

### spring mvc  동작 순서

1. **핸들러 조회** : 핸들러 매핑을 통해 요청 URL에 매핑된 핸들러를 조회한다
2. **핸들러 어댑터 조회** : 핸들러를 실행할 수 있는 핸들러 어댑터를 조회한다
3. **핸들러 어댑터 실행** : 핸들러 어댑터를 실행한다
4. **핸들러 실행** : 핸들러 어댑터가 실제 핸들러를 실행한다
5. **ModelAndView 반환** : 핸들러 어댑터는 핸들러가 반환하는 정보를 ModelAndView로 변환하여 반환한다
6. **viewResolver 호출** : 뷰 리졸버를 찾고 실행한다
7. **View 반환** : 뷰 리졸버는 뷰의 논리 이름을 물리 이름으로 바꾸고 렌더링 역할을 담당하는 뷰 객체를 반환한다
8. **뷰 렌더링** : 뷰를 통해 뷰를 렌더링 한다

### spring mvc 주요 인터페이스 목록

- **핸들러 매핑** : org.springframework.web.servlet.HandlerMapping
- **핸들러 어댑터** : org.springframework.web.servlet.HandlerAdapter
- **뷰 리졸버** : org.springframework.web.servlet.ViewResolver
- **뷰** : org.springframework.web.servlet.View

참고 - 

[https://tecoble.techcourse.co.kr/post/2021-05-23-servlet-servletcontainer/](https://tecoble.techcourse.co.kr/post/2021-05-23-servlet-servletcontainer/)

[https://oingdaddy.tistory.com/359](https://oingdaddy.tistory.com/359)

[https://recordsoflife.tistory.com/603](https://recordsoflife.tistory.com/603)

[https://soobindeveloper8.tistory.com/598](https://soobindeveloper8.tistory.com/598)