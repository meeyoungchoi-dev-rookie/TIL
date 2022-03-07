# HTTP 요청 파라미터 - 쿼리 파라미터 , HTML Form

## HttpServletRequest

### request.getParamter()

- request 객체에서 URL 쿼리파라미터를 꺼낸다

```java
@RequestMapping("/request-param-v1")
public void requestParamV1(HttpServletRequest request , HttpServletResponse response) throws IOException {
    String userName = request.getParameter("userName");
    int age = Integer.parseInt(request.getParameter("age"));

    log.info("userName={} , age={}", userName , age);

    response.getWriter().write("OK");
}
```

## @RequestParam

- HttpServletRequest 객체와 같은 역할을 한다
- HttpServletReqeust 객체를 사용하는 경우 getParameter 메서드를 사용하여 쿼리파라미터를 꺼냈다
- spring 에서는 @RequestParam 어노테이션을 사용하여 쿼리파라미터를 받는다

```java
@ResponseBody
@RequestMapping("/request-param-v2")
public String requestParamV2(@RequestParam("userName") String userName ,
                             @RequestParam("age") int memberAge) {

    log.info("userName={} , aage={}", userName , memberAge);
    return "ok";
}
```

- @RequestParam 이름과 변수명이 같으면 이름을 생략할 수 있다

```java
@ResponseBody
@RequestMapping("/request-param-v3")
public String requestParamV3(@RequestParam String userName ,
                             @RequestParam int age) {
    log.info("userName={} , age={}", userName , age);
    return "ok";
}
```

- @RequestParam 어노테이션 자체를 생략할 수도 있다

```java
@ResponseBody
@RequestMapping("/request-param-v4")
public String requestParamV4(String userName , int age) {

    log.info("userName={} , age={}", userName , age);
    return "ok";
}
```

- @RequestParam에 속성을 지정할 수 있다
- required 속성 값이 true인 경우
- URL에 해당 파라미터 값이 없는 경우 에러가 발생된다
- required 속성 값이 false인 경우
- URL에 해당 파라미터 값이 없어도 에러가 발생되지 않는다

```java
@ResponseBody
@RequestMapping("/request-param-required")
public String requestParamRequired(@RequestParam(required = true) String userName ,
                                   @RequestParam(required = false) Integer age) {

    log.info("userName={} , age={}", userName , age);
    return "ok";
}
```

- defaultValue 속성을 사용하여 파라미터의 초기값을 지정해 줄수 있다
- 이는 required 속성값 여부에 관계없이 동작한다
- 왜? 기본이 true인데 값이 넘어오지 않는경우 defaultValue에 설정된 초기값으로 저장되기 때문

```java
@ResponseBody
@RequestMapping("/request-param-default")
public String requestParamDefault(@RequestParam(defaultValue = "guest") String userName ,
                                   @RequestParam(defaultValue = "-1") int age) {

    log.info("userName={} , age={}", userName , age);
    return "ok";
}
```

- 클라이언트에서 서버로 전달되는 데이터를 @RequestParam 어노테이션을 사용하여 Map 타입으로 받을 수 있다

```java
@ResponseBody
@RequestMapping("/request-param-map")
public String requestParamMap(@RequestParam Map<String, Object> paramMap) {

    log.info("userName={} , age={}", paramMap.get("userName") , paramMap.get("age"));
    return "ok";
}
```

참고 -

[https://hongku.tistory.com/119](https://hongku.tistory.com/119)