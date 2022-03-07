# HTTP 요청 파라미터 - @RequestParam

@RequesParam(required = true) 일때 파라미터 값을 넘겨주지 않는 경우 발생되는 에러

```java
Resolved [org.springframework.web.bind.MissingServletRequestParameterException: Required request parameter 'userName' for method parameter type String is not present]
```

`@RequestParam(required = false) int age`

일때 age에 아무 값도 넣지 않으면 에러가 발생한다

```java
Optional int parameter 'age' is present but cannot be translated into a null value due to being declared as a primitive type.
```

왜? 기본형 타입인 int 타입에는 null을 넣을수 없다

따라서 Integer 타입으로 선언해 줘야 한다

또는 defaultValue를 사용하는 방법도 있다

단 , defulatValue가 들어가게 되면 required는 필요없다

왜? 값이 없는경우 defaultValue가 들어가기 때문이다

또한 빈문자열로 파라미터가 넘어오는 경우에도 defaultValue가 적용된다

MultiValueMap

@NotBlank , @NotNull 파라미터 Null시 validation 체크

하려면

```java
implementation 'org.springframework.boot:spring-boot-starter-validation'
```

참고- 

[https://sanghye.tistory.com/36](https://sanghye.tistory.com/36)

[https://stackoverflow.com/questions/54459882/how-to-validate-non-required-requestparam-is-not-blank](https://stackoverflow.com/questions/54459882/how-to-validate-non-required-requestparam-is-not-blank)

[https://rnokhs.tistory.com/37](https://rnokhs.tistory.com/37)