# HTTP요청 - 기본 , 헤더 조회

## HTTP 헤더 정보를 조회하는 방법

### servlet에서 헤더 정보를 조회한 방식

- HttpServletReqeust 객체를 사용하여 header 정보를 조회했다

```java
private void printStartLine(HttpServletRequest request) {

  System.out.println("--- REQUEST-LINE - start ---");
  System.out.println("request.getMethod() = " + request.getMethod());
  System.out.println("request.getProtocal() = " + request.getProtocol());

  System.out.println("request.getScheme() = " + request.getScheme());

  System.out.println("request.getRequestURL() = " + request.getRequestURL());

  System.out.println("request.getRequestURI() = " + request.getRequestURI());

  System.out.println("request.getQueryString() = " +
          request.getQueryString());
  System.out.println("request.isSecure() = " + request.isSecure());

  System.out.println("--- REQUEST-LINE - end ---");

}
```

### spring mvc에서 헤더 정보를 조회하는 방식

- @RequestHeader 어노테이션을 사용한다
- 클라이언트에서 서버로 데이터를 요청할때 HTTP 헤더에 들어있는 값을 컨트롤러 메서드 파라미터로 전달해 준다
- @RequestHeader 를 사용하여 header를 받아 데이터를 꺼내 사용한다
- @RequestHeader에 특정 key 값만 추출할 수도 있다
- 즉 , 특정 헤더를 조회한다
- 필수 값 여부 , 기본 값을 설정할 수 있다
- 속성
    - 필수 값 여부 : required
    - 기본 값 속성 : defaultValue

```java
@RequestHeader("host") String host
@RequestHeader(value = "host", required = true, defaultValue = "defalutValue") String host

```

- 모든 HTTP 헤더를 MultiValueMap 형식으로 조회할 수 있다

```java
@RequestHeader MultiValueMap<String, String> headerMap
```

```java
headerMap={host=[localhost:8080], connection=[keep-alive], sec-ch-ua=[" Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"], sec-ch-ua-mobile=[?0], sec-ch-ua-platform=["Windows"], upgrade-insecure-requests=[1], user-agent=[Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36], accept=[text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9], sec-fetch-site=[none], sec-fetch-mode=[navigate], sec-fetch-user=[?1], sec-fetch-dest=[document], accept-encoding=[gzip, deflate, br], accept-language=[ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7], cookie=[ab.storage.userId.7af503ae-0c84-478f-98b0-ecfff5d67750=%7B%22g%22%3A%22browser-1631198937107-8%22%2C%22c%22%3A1646657705594%2C%22l%22%3A1646657705599%7D; ab.storage.deviceId.7af503ae-0c84-478f-98b0-ecfff5d67750=%7B%22g%22%3A%22a6417856-b73e-cdfa-5eee-dc9f9d3f46e9%22%2C%22c%22%3A1646657705601%2C%22l%22%3A1646657705601%7D; ab.storage.sessionId.7af503ae-0c84-478f-98b0-ecfff5d67750=%7B%22g%22%3A%22b247a0cd-35b9-4ee9-611b-99cdec096f71%22%2C%22e%22%3A2146657705618%2C%22c%22%3A1646657705597%2C%22l%22%3A1646657705618%7D]}
```

- `MultiValuemap`
- 하나의 키에 여러 value 값을 담을 수 있다

```java
KeyA=value1&KeyA=value2
```

## 쿠키 전달 받기

- @CookieValue 어노테이션을 사용하여 쿠키를 전달 받을 수 있다
- value 속성을 사용하여 전달 받을 쿠키 이름을 지정한다
- required 속성을 true로 지정하는 경우 쿠키가 존재하지 않을 경우 예외가 발생된다
- 속성
    - 필수 값 여부: required
    - 기본 값 : defaultValue

```java
@CookieValue(value = "myCookie", required = false) String cookie
```

### Locale

- 프로그램의 국제화 - 다국어처리
- 프로그램의 메시지를 여러 언어로 설정해 놓고 사용하자 어떤 언어로 메시지를 출력할 것인지 설정할 수 있게 한다
- 숫자표현법 , 날짜 또는 시간표현법 등에 사용될 수 있다

참고 -

[http://ojc.asia/bbs/board.php?bo_table=LecSpring&wr_id=446](http://ojc.asia/bbs/board.php?bo_table=LecSpring&wr_id=446)

[https://highright96.tistory.com/9](https://highright96.tistory.com/9)

[https://developer-hm.tistory.com/19](https://developer-hm.tistory.com/19)

[https://linuxism.ustd.ip.or.kr/557](https://linuxism.ustd.ip.or.kr/557)