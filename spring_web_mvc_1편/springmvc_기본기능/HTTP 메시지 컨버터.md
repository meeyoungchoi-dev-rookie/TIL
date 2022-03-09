
## Http 메시지 컨버터

- HTTP 메시지 컨버터를 사용하면 편리하게 작업할 수 있다
- JSON 데이털르 HTTP 바디에 직접 읽거나 쓰는 경우 사용된다

`@ResponseBody`

- HTTP BODY에 메시지 데이터를 담아 반환해 준다
- HTTPMessageConverter가 동작한다
- 문자열을 반환하는 경우 StringHttpMessageConverter가 동작한다
- 객체를 반환하는 경우 MappingJacksonMessageConverter가 동작한다

- HTTP 요청과 HTTP 응답을 보낼때 HTTP 메시지 컨버터가 동작한다
- `HTTP 요청` - @RequestBody , HttpEntity(RequestEntity)
- `HTTP 응답` - @ResponseBody , HttpEntity(ResponseEntity)

## Http 메시지 컨버터 인터페이스

- canRead() , canWrite()  - 메시지 컨버터가 해당 클래스 , 미디어타입을 지원하는지 체크
    - canRead 메서드를 통해 메시지 컨버터가 메시지를 읽을 수 있는 지 확인한다
    - 조건을 만족하는 경우 read 메서드를 호출하여 객체를 생성하고 컨트롤러에게 반환해 준다
- read() , write() - 메시지 컨버터를 통해 메시지를 읽고 쓰는 기능

## 스프링 부트에 등록되 있는 메시지 컨버터

- 메시지 컨버터에 우선순위가 있다

```java
0 - ByteArrayMessageConverter
1 - StringHttpMessageConverter
2 - MappingJackson2HttpMessageConverter
```

**ByteArrayHttpMessageConverter - byte 배열 데이터를 처리한다**

응답시 application/octet-stream 미디어 타입을 제공한다 (/)

**StringHttpMessageConverter - String 문자열로 데이터를 처리한다**

응답시 text/plain 미디어 타입을 제공한다

**MappingJackson2HttpMessageConverter** 

응답시 application/json 미디어 타입을 제공한다

## HTTP 요청 데이터 읽기

- HTTP 요청이 들어온다
- 컨트롤러에서 @RequestBody 와 HttpEntity 객체를 통해 파라미터를 받는다
- canRead 메서드를 호출하여 메시지 컨버터가 메시지를 읽을 수 있는지 확인한다
    - 이때 메시지 컨버터의 우선순위대로 검사한다
    - 검사항목 - 대상 클래스 타입 , 미디어 타입을 지원하는지 검사

## HTTP 응답 데이터 생성

- 컨트롤러에서 클라이언트로 @ResponseBody 와 HttpEntity 객체를 통해 데이터를 전달해 준다
- 메시지 컨버터가 canWrite 메서드를 호출하여 메시지를 쓸수 있는지 확인한다
    - 이때 메시지 컨버터의 우선순위대로 검사한다
    - 검사항목 - 대상 클래스 타입 , 미디어 타입을 지원하는지 검사

참고 - 

[https://loopstudy.tistory.com/223](https://loopstudy.tistory.com/223)

[https://cornarong.tistory.com/37](https://cornarong.tistory.com/37)