# HTTP 요청 파라미터 - @ModelAttribute

@ModelAttribute 동작원리

@ModelAttribute

문자가 들어가야할 파라미터에 숫자가 들어가면 에러가 발생된다

```java
Resolved [org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors<EOL>Field error in object 'helloData' on field 'age': rejected value [뮻];
```

validation 하는 파트에서 자세히 다룸

예외처리가 중요하다

@ModelAttribute 와 @RequestParam을 둘다 생략하는 경우

- String , int , Integer 같은 단순 타입의 경우 자동으로 @RequestParam이 적용된다
- 사용자 지정 클래스 타입의 경우 @ModleAttribute 가 적용된다
- 단 , HttpServletRequest 등과 같이 argument resolver로 지정된 타입의 경우 @ModelAttribute가 적용되지 않는다