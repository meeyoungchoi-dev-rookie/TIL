## Buffer

- 읽고 쓰기가 가능한 메모리 배열
- 컴퓨터 안의 프로세스 사이에서 데이터를 이동시킬 때 사용하는 임시 저장공간
- 데이터를 한 곳에서 다른 한 곳으로 전송하는 동안 일시적으로 데이터를 보관하는 메모리 영역
- 데이터는 입력 장치로부터 받거나 출력 장치로 내보낼때 버퍼 안에 저장된다
- 저장되는 데이터 타입에 따라 분류된다

## Buffer를 왜 사용해야 하는가

- 속도 차이가 큰 두 대상이 입출력을 수행할 때 효율성을 높이기 위해 사용

## ByteBuffer

- 바이트 타입의 데이터를 받는 버퍼
- `position` : 버퍼를 읽거나 쓸때 시작되는 지점
    - 인덱스 값 , 0부터 시작
- `capacity` : 버퍼가 보유할 수 있는 최대 데이터 개수(메모리 크기)
    - 인덱스 값이 아닌 수량
    - 한번 설정 되면 변경 불가 → 메서드를 통해 읽기만 가능
- `limit` : 버퍼에서 접근할 수 있는 마지막 데이터
    - 실질적 사용 용량(한도)을 결정
    

## 버퍼 관련 메서드

- `allocate` : 버퍼를 생성한다
    - JVM 힙영역에 버퍼가 할당된다
    - 자바에서 버퍼를 할당할 때 사용
- `allocateDirect` : 운영체제 커널 영역에 바이트 버퍼를 생성한다
    - 운영체제가 제공하는 입/출력 기능을 직접 사용하기 때문에 성능면에서 이점이 있다
- `wrap` : 입력된 바이트 배열을 사용하여 버퍼를 생성
    - 이미 생성되어 있는 자바 배열을 래핑하여 Buffer 객체를 생성한다

참고 - 

[https://onlyfor-me-blog.tistory.com/368](https://onlyfor-me-blog.tistory.com/368)

[https://byul91oh.tistory.com/267](https://byul91oh.tistory.com/267)

[https://velog.io/@kkimbj18/버퍼를-사용하는-이유-Feat.-BufferedReader-vs-Scanner-cache](https://velog.io/@kkimbj18/%EB%B2%84%ED%8D%BC%EB%A5%BC-%EC%82%AC%EC%9A%A9%ED%95%98%EB%8A%94-%EC%9D%B4%EC%9C%A0-Feat.-BufferedReader-vs-Scanner-cache)

[https://forl.tistory.com/137](https://forl.tistory.com/137)

[https://leeyh0216.github.io/posts/java_nio_buffer/](https://leeyh0216.github.io/posts/java_nio_buffer/)