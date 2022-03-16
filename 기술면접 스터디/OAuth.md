# OAUth - 질문할 내용 정리

## OAuth

- 권한 부여를 위한 산업 표준 프로토콜
- 인증과 권한
- `인증` - 시스템 접근을 확인하는 것
- `권한` - 행위의 권리를 검증하는 것

## OAuth 배경

- 구매하거나 회원가입 하는 경우 사용자 인증이 필요하다
- 회사마다 인증방식이 제각각이다
- 모든 애플리케이션에서 같이 사용할 수 있게 룰을 정했다
- 즉 , 인증을 공유하는 애플리케이션 끼리는 별도의 인증이 필요없다
- 따라서 , 애플리케이션을 통합하여 사용하는 것이 가능해 진다

## OAuth1.0
- OpenID등 인증만을 위한 기능이 아닌 인증과 인가를 모두 사용할 목적으로 만들어졌으나 보안적인 문제로 OAuth1.0a이 나옴
- 앱어플리케이션에서 사용하기 어려운점, 복잡한 절차, 구현의 어려움, 복잡한 절차로 인한 연산의 부담 등을 보완하여 OAuth2.0이 나옴

## OAuth2.0

- OAuth1.0의 보안문제 해결을 위해 등장
- 보안 강화를 위해 Access Token의 life time 지정가능
- 다양한 플랫폼 환경에서 인증 과 권한을 제공한다
- `인증` - 시스템 접근을 확인하는 것 (로그인)
- `권한` - 행위의 권리를 검증하는 것

## 질문 
- oauth1.0 과 oauth2.0 차이
- Oauth2.0에서 변경된점
웹 애플리케이션이 아닌 애플리케이션 지원 강화

HTTPS를 사용하여 HMAC-SHA1와 같은 암호화를 사용하지 않음

Siganature 단순화 정렬과 URL 인코딩이 필요 없음 oauth인증중 oauth_signature이외의 파라미터를 정렬하고 base64로 인코딩 해야했음

Access Token의 Life-time(유효기간)을 지정 할 수 있도록 함

Authorization Sever: 인증을 관리하고 있는 서버

참고 -

[https://soomti.tistory.com/3](https://soomti.tistory.com/3)

[https://justee.tistory.com/1](https://justee.tistory.com/1)

[https://www.icatpark.com/entry/OAuth-20-이해](https://www.icatpark.com/entry/OAuth-20-%EC%9D%B4%ED%95%B4)