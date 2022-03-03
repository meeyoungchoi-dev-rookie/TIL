# 스프링 MVC - 시작하기 - V1

## 스프링이 제공하는 컨트롤러는 어노테이션 기반으로 동작한다

- 매우 유연하고 실용적이다

## @RequestMapping

- @RequestMappingHandlerMapping 과 @RequestMappingHandlerAdapter 어노테이션이 필요하다
- 왜? 요청을 처리할 핸들러를 찾고 찾은 컨트롤러를 실행하기 위해 두개의 어노테이션이 필요하다
- 두개의 기능을 @RequestMapping 어노테이션을 통해 처리가능하다
- 요청 정보를 매핑한다
    - 해당 URL이 호출되면 @RequestMapping 어노테이션이 붙은 메서드가 호출된다

## @Controller

- ComponentScan의 대상이 된다
- 따라서 자동으로 SpringMemberFormController가 bean으로 등록된다
- spring mvc에서 애노테이션 기반 컨트롤러로 인식한다
    - @RequestMappingHandlerMapping이 URL을 보고 핸들러를 찾을 수 있게 된다
    - 따라서 , 핸들러 조회시 핸들러를 꺼낼수 있게 된다
- ModelAndView 객체에 모델과 뷰 정보를 담아 반환해주면 된다
    
    

## @RequestHandlerMappingHandler 로 인식되려면

- 클래스 레벨에 @RequestMapping 또는 @Controller 어노테이션이 붙어 있어야 한다
- @Controller를 @Component로 변경해도 인식 된다
- 단 , @Component 어노테이션을 사용하는 경우 @RequestMapping 어노테이션을 붙여줘야 한다
- 클래스 레벨에 @RequestMappingHandlerMapping 어노테이션이 bean으로 등록된 핸들러를 찾아주기 때문이다

```java
@Override
protected boolean isHandler(Class<?> beanType) {
	return (AnnotatedElementUtils.hasAnnotation(beanType, Controller.class) ||
			AnnotatedElementUtils.hasAnnotation(beanType, RequestMapping.class));
}
```

## @Controller 쓰지 않고 @Bean으로 직접 클래스를 빈으로 등록해줘도 된다

```java
@Bean
SpringMemberFormControllerV1 springMemberFormControllerV1() {
	return new SpringMemberFormControllerV1();
}

```

## @Component

- @Component의 구체화된 형태로 @Controller , @Service , @Repository 어노테이션이 있다
- 컴포넌트 스캔을 통해 @Component가 붙어있는 클래스를 스캔해서 빈으로 등록해 준다
- 이때 , @Component를 가지고 있는 @Controller , @Service , @Repository , @Configuration 어노테이션이 붙어있는 클래스들도 빈으로 등록된다
- 어노테이션은 상속을 지원하지 않기 때문에 스프링에서 빈으로 등록해 준다

## V1 구조

`SpringMemberFormControllerV1`

```java
@Controller
public class SpringMemberFormControllerV1 {

    @RequestMapping("/springmvc/v1/members/new-form")
    public ModelAndView process() {
        return new ModelAndView("new-form");
    }
}
```

`SpringMemberSaveControllerV1`

```java
@Controller
public class SpringMemberSaveControllerV1 {

    private MemberRepository memberRepository = MemberRepository.getInstance();

    @RequestMapping("/springmvc/v1/members/save")
    public ModelAndView process(HttpServletRequest request , HttpServletResponse response) {
        String username = request.getParameter("username");
        int age = Integer.parseInt(request.getParameter("age"));

        Member member = new Member(username, age);
        memberRepository.save(member);

        ModelAndView mv = new ModelAndView("save-result");
        mv.addObject("member", member);
        return mv;
    }

}
```

`SpringMemberListControllerV1`

```java
@Controller
public class SpringMemberListControllerV1 {
    private MemberRepository memberRepository = MemberRepository.getInstance();

    @RequestMapping("/springmvc/v1/members")
    public ModelAndView process(HttpServletRequest request) {

        List<Member> members = memberRepository.findAll();
        ModelAndView mv = new ModelAndView("members");
        mv.addObject("members", members);

        return mv;
    }
}
```

참고 - 

[https://93nss.tistory.com/5](https://93nss.tistory.com/5)

[https://velog.io/@max9106/Spring-Component](https://velog.io/@max9106/Spring-Component)