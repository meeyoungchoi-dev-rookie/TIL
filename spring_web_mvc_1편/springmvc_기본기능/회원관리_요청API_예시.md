# 요청 매핑 - API 예시

## 회원 관리를 HTTP API로 만든다

- 회원 조회 → @GetMapping(”/{userId}”)
- 회원 목록 조회 → @GetMapping(”/users”)
- 회원 추가 → @PostMapping
- 회원 수정 → @PatchMapping(”/{userId}”)
- 회원 삭제 → @DeleteMapping(”/{userId}”)

## @RequestMapping 클래스 레벨 과 메서드 레벨

- 클래스에 @RequestMapping 어노테이션 설정시 메서드에 설정한 URL은 클래스의 서브 URL이 된다
- 즉 , 클래스 레벨에서 URL의 공통 조건을 지정한다
- 메서드 레빌에서 URL을 세분화 시킨다
- 예제에서는 `/mapping/users` url을 공통 URL로 지정했다
- HTTP 전송방식에 따라 메서드 레벨에서 처리하는 URL을 세분화 시켰다

```java
@GetMapping
public String users() {
    return "get users";
}

@PostMapping
public String addUser() {
    return "post user";
}

@GetMapping("/{userId}")
public String findUser(@PathVariable String userId) {
    return "get userId=" + userId;
}

@PatchMapping("/{userId}")
public String updateUser(@PathVariable String userId) {
    return "update userId=" + userId;
}

@DeleteMapping("/{userId}")
public String deleteUser(@PathVariable String userId) {
    return "delete userId=" + userId;
}
```

참고 -

[https://galid1.tistory.com/556](https://galid1.tistory.com/556)

[https://elfinlas.github.io/2018/02/18/spring-parameter/](https://elfinlas.github.io/2018/02/18/spring-parameter/)

[https://velog.io/@younghwan24/Spring-Controller-Parameter](https://velog.io/@younghwan24/Spring-Controller-Parameter)

[https://yang1650.tistory.com/133](https://yang1650.tistory.com/133)

[https://dahliachoi.tistory.com/42](https://dahliachoi.tistory.com/42)

[https://heeestorys.tistory.com/373](https://heeestorys.tistory.com/373)

[https://joont92.github.io/spring/@RequestMapping/](https://joont92.github.io/spring/@RequestMapping/)