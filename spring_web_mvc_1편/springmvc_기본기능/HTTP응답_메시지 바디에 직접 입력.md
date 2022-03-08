# HTTP 응답 - 메시지 바디에 직접 입력

```java
@GetMapping("/response-body-string-v2")
public ResponseEntity<String> responseBodyV2() {

    return new ResponseEntity("OK", HttpStatus.OK);
}
```

ResponseEntity

- HTTP 메시지 컨버터를 통해 JSON 형식으로 데이터가 변환되어 반환된다
- HttpEntity를 상속받는다
- HttpHeader 와 body를 갖는다
- status field를 갖기 때문에 상태코드를 필수적으로 반환해줘야 한다
- v2의 경우 응답메시지와 상태코드를 반환해 주는 경우 이다

```java
@GetMapping("/response-body-json-v1")
public ResponseEntity<HelloData> responseBodyJsonV1() {
    HelloData helloData = new HelloData();
    helloData.setUserName("userA");
    helloData.setAge(20);
    return new ResponseEntity<>(helloData, HttpStatus.OK);
}
```

- v1의 경우 응답 객체와 상태코드를 ResponseEntity 객체에 담아 반환해 주는 방식이다

```java
@ResponseStatus(HttpStatus.OK)
@GetMapping("/response-body-json-v2")
public HelloData responseBodyJsonV2() {
    HelloData helloData = new HelloData();
    helloData.setUserName("userA");
    helloData.setAge(20);
    return helloData;
}
```

- response-body-json-v2의 경우
- 자바 객체에 직접 데이터를 담아 객체를 직접 반환해 주는 방식이다
- 상태코드는 @ResponseStatus 어노테이션을 사용하여 반환해 준다
- 즉  클라이언트로 응답시 상태코드를 지정해 줄 수 있다

참고 -

[https://www.devkuma.com/docs/spring-boot/응답-상태-코드-@responsestatus값-지정하기/](https://www.devkuma.com/docs/spring-boot/%EC%9D%91%EB%8B%B5-%EC%83%81%ED%83%9C-%EC%BD%94%EB%93%9C-@responsestatus%EA%B0%92-%EC%A7%80%EC%A0%95%ED%95%98%EA%B8%B0/)

[https://a1010100z.tistory.com/106](https://a1010100z.tistory.com/106)

[https://devlog-wjdrbs96.tistory.com/182](https://devlog-wjdrbs96.tistory.com/182)

[https://jieun0113.tistory.com/119](https://jieun0113.tistory.com/119)