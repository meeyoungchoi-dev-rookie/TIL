# HTTP 요청 메시지 - JSON

## 컨트롤러에서 JSON 데이터 처리하는 방식

### 스프링에서 json 데이터를 반환해주는 방식 #1.

```java
@PostMapping("/request-body-json-v1")
public void  requestBodyJsonV1(HttpServletRequest request , HttpServletResponse response) throws IOException {
    ServletInputStream inputStream = request.getInputStream();
    String messageBody = StreamUtils.copyToString(inputStream, StandardCharsets.UTF_8);

    log.info("messageBody={}" , messageBody);
    HelloData helloData = objectMapper.readValue(messageBody, HelloData.class);

    log.info("userName={} , age={}", helloData.getUserName() , helloData.getAge());

    response.getWriter().write("OK");
}
```

`Stream`

- 데이터가 오고가는 통로

`InputStream`

- 데이터가 들어오는 통로 역할에 대해 규정하고 있는 추상클래스
- 파일 데이터를 읽거나 네트워크 소켓을 통해 데이터를 읽거나 키보드에서 입력한 데이터를 읽을때 사용

request.getInputStream()

- http message-body에 넘어온 데이터를 확인하기 위한 메서드

StreamUtils.copyToString()

- InputStream을 문자열로 반환해 준다

```java
ServletInputStream inputStream = request.getInputStream();
String messageBody = StreamUtils.copyToString(inputStream, StandardCharsets.UTF_8);
```

- HTTP 메시지바디에 담겨있는 데이터를 UTF-8로 변환한다

```java
HelloData helloData = objectMapper.readValue(messageBody, HelloData.class);
```

`ObjectMapper` - JSON을 자바 객체로 변환하기 위해 사용하는 클래스

- JSON을 자바 객체로 변환할 수 있고 자바 객체를 JSON 형식의 문자열로 변환할 수 있다
- readValue 메서드를 사용하여 JSON 문자열을 자바 객체로 변환한다

```java
response.getWriter().write("OK");
```

- response 객체에 단순 텍스트를 담아 클라이언트에게 응답해줄때 사용

### 스프링에서 json 데이터를 반환해주는 방식 #2.

```java
@ResponseBody
@PostMapping("/request-body-json-v2")
public String  requestBodyJsonV2(@RequestBody String messageBody) throws IOException {
  log.info("messageBody={}" , messageBody);
  HelloData helloData = objectMapper.readValue(messageBody, HelloData.class);

  log.info("userName={} , age={}", helloData.getUserName() , helloData.getAge());

  return "OK";
}
```

`@RequestBody`

 http 바디 부분에 데이터가 담겨 전달된다

즉 , 어노테이션을 통해 HTTP 바디에서 데이터를 꺼낸다

ObjectMapper 클래스의 readValue 메서드를 사용하여 JSON 문자열을 HelloData 객체로 변환해 준다

`@ResponseBody`

클라이언트로 응답해줄 객체를 HTTP body에 담아 준다

### 스프링에서 json 데이터를 반환해주는 방식 #3.

```java
@ResponseBody
@PostMapping("/request-body-json-v3")
public String  requestBodyJsonV3(@RequestBody HelloData helloData) {
    log.info("messageBody={}" , helloData);

    log.info("userName={} , age={}", helloData.getUserName() , helloData.getAge());

    return "OK";
}
```

2번 방식에서는 데이터를 문자열로 변환후 다시 JSON을 변환했다

한번에 자바 객체로 변환하기 위해 @RequestBody 어노테이션을 사용한다

@RequestBody 에 직접 만든 자바 객체를 지정할 수 있다

단, HelloData 클래스에 게터/세터 메서드가 선언되 있어야 한다

왜? HTTP 메시지 컨버터가 HTTP 바디의 내용을 JSON 또는 객체로 변환해 주기 때문

@ResponseBody 어노테이션을 사용하여 응답해줄 객체를 직접 HTTP 메시지 바디에 넣을 수 있다

### 스프링에서 json 데이터를 반환해주는 방식 #4.

```java
@ResponseBody
@PostMapping("/request-body-json-v4")
public String  requestBodyJsonV4(HttpEntity<HelloData> helloData) {
    log.info("messageBody={}" , helloData);
    HelloData bodyData = helloData.getBody();
    log.info("userName={} , age={}", bodyData.getUserName() , bodyData.getAge());

    return "OK";
}
```

 

`HttpEntity`

- HTTP 통신시 header 와 body에 담겨있는 데이터를 하나의 객체로 만들어 준다
- HTTP 요청과 응답에 해당하는 정보도 담고 있다
- 왜? HttpHeader와 HttpBody를 포함하는 클래스 이기 때문
- JSON 문자열에 담겨있는 userName 과 age 정보만 꺼내기 위해 getBody 메서드를 사용한다

### 스프링에서 json 데이터를 반환해주는 방식 #5.

```java
@ResponseBody
@PostMapping("/request-body-json-v5")
public HelloData  requestBodyJsonV5(@RequestBody HelloData helloData) {
    log.info("userName={} , age={}", helloData.getUserName() , helloData.getAge());
    return helloData;
}
```

- 메서드의 반환타입이 HelloData 객체타입이다
- @RequestBody 를 통해 전달받은 HelloData 객체를 클라이언트로 반환해 준다

참고 - 

[https://velog.io/@zooneon/Java-ObjectMapper를-이용하여-JSON-파싱하기](https://velog.io/@zooneon/Java-ObjectMapper%EB%A5%BC-%EC%9D%B4%EC%9A%A9%ED%95%98%EC%97%AC-JSON-%ED%8C%8C%EC%8B%B1%ED%95%98%EA%B8%B0)

[https://choiyeonho903.tistory.com/26](https://choiyeonho903.tistory.com/26)

[https://cheershennah.tistory.com/179](https://cheershennah.tistory.com/179)

[https://hellomike.page/posts/2021/spring-utils-io-resources/](https://hellomike.page/posts/2021/spring-utils-io-resources/)

[https://lee-mandu.tistory.com/242](https://lee-mandu.tistory.com/242)

[https://devlog-wjdrbs96.tistory.com/182](https://devlog-wjdrbs96.tistory.com/182)