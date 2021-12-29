# TIL
What Today I Learned


# 12월 20일
1. 강의 듣기전 몰랐던 점 : 없음
2. 배운점
+ CSS란 무엇인가
    + 상세 정리내용 : https://junior-developer-myc.tistory.com/6?category=1025674
+ HTML 문서와 CSS를 연결해주는 방식
    + 상세 정리내용 : https://junior-developer-myc.tistory.com/7?category=1025674
    

# 12월 21일
1. 강의 듣기전 몰랐던 점
+ css 기본 선택자 종류와 사용법


2. 배운점
+ css 기본 선택자 
  + 선택자 목적
    + 전체 선택자 , 태그 선택자 , 클래스 선택자 , 아이디 선택자 , 그룹 선택자
     + 상세 정리내용 : https://junior-developer-myc.tistory.com/11?category=1025674



# 12월 23일
+ css box-sizing
  + 1. 몰랐던 점
    + box-sizing의 목적
    + border-box 와 content-box의 차이

  + 2. 배운점
    + box-sizing의 목적
      + content-box로 설정하면 개발자가 border , padding , width의 값을 전부 계산 해야 한다
      + content의 실제 크기를 알기 어렵다
    + border-box의 특징
      + border의 두께를 늘리거나 padding을 늘려도 박스 전체의 width는 변하지 않는다
      + 단, 두께가 늘어날수록 content의 width 와 height는 줄어든다


# 12월 27일
+ 블로그 프로젝트
  + 잘된점
    + 카테고리 상세 페에지 레이아웃 설계
      + float을 사용 하여 3개의 div를 가로 정렬
      + ul , li 태그를 사용하여 내비게이션 바를 만듦
      + table 태그를 사용하여 table 생성
      + div를 사용하여 카드 레이아웃 생성
    + 배운점
      + li 태그 아펭 점 없애기
        + list-style-type: none;
      + a 태그 밑줄 없애기
        + text-decoration-line: none;
    + 개선해야 할 사항
      + 페이징 버튼 레이아웃 다듬기
      + 카드 레이아아수 모양 다듬기
        + 한 줄에 몇개의 카드를 오개 할지

+ HTTP
  + 잘된점
    + 좋은 API URL 설계 방법
      + 리소스를 식별할 수 있게 설계한다
      + 리소스를 식별하는 방법
        + 리소스와 행위를 분리한다
    + HTTP 메서드 정의
      + 클라이언트가 서버에게 요청할 때 기대하는 행동
        + HTTP 메서드 종류
          + GET : 데이터를 달라
          + POST : 데이터를 줄테니까 처리를 해달라
          + 응답 데이터 형식
            + GET -> ```
                        HTTP/1.1 200 OK
                        Content Type: application/json
                        Contetn-Length: 34

                        {
                          "Username": "young",
                          "age": 20
                        }


                    ```

              + POST -> ```
                               POST /members HTTP/1.1
                              Conten-Type: application/json

                              {
                                "username": "hello",
                                "age": 20
                              }    


                        ```
        

# 12월 28일
  ## CSS
  + 배운점
  + p태그를 가로 세로 정렬하는 방법
  + vertical-align : inline 요소 또는 inline-block요소를 수직 정렬할때 사용
  + text-align : block 요소 안에 있는 inline 요소를 정렬한다 (텍스트를 정렬한다)

  ## SQL
  + 배운점
  + LIKE를 사용하여 문자열의 일부분을 부분검색하는 방법
  + `%` : 문자의 길이는 상관하지 않는다
  + `_` : 문자의 길이와 관계 있다 (1개의 문자를 표현한다)

  + 문자열 안에 포함된 % 또는 _를 찾고 싶은 경우
  + `\` 를 사용하여 검색한다
  ```
  SELECT *
  FROM customers
  WHERE discount LIKE '50\%';
  ```

# 12월 29일
## SQL
+ 잘한점
+ 해커랭크에서 sql where 관련 문제 6문제 풀어봄

+ 배운점
+ NOT LIKE를 사용하여 문자열 패턴을 만족하지 않는 조건을 검사한다
+ station 테이블에서 city 컬럼의 값이 a , e , i , o ,u로 시작하지 않으면서 동시에 a , e , i , o , u 로 끝나지 않는 조건을 만족하는 row를 추출한다
+ 이때 city 컬럼의 데이터가 중복되면 안된다
```
SELECT distinct city
FROM station
WHERE city NOT LIKE 'a%' 
AND city NOT LIKE 'e%' 
AND city NOT LIKE 'i%' 
AND city NOT LIKE 'o%' 
AND city NOT LIKE 'u%' 
AND city NOT LIKE '%a' 
AND city NOT LIKE '%e' 
AND city NOT LIKE '%i' 
AND city NOT LIKE '%o' 
AND city NOT LIKE '%u';
```
## 블로그 프로젝트
+ 잘된점
+ 회원가입 페이지 div 컨텐츠 영역 레이아웃 수정
+ 로그인 페이지 div 컨텐츠 영역 레이아웃 수정
+ 블로그 글쓰기 페이지 div 컨텐츠 영역 레이아웃 수정 

+ 배운점
+ button 태그를 div로 감싸서 정렬
+ ```
   .register .register_popup .popup_body div button {
                display: block;
                margin-left: 33%;
                width: 170px;
                margin-bottom: 10px;
                margin-top: 20px;
               
            }
  ```

+ 향후 계획
  + 향후 만들어야 하는 레이아웃
  + 블로그 관리자 페이지
    + 관리자 메인 페이지
    + 글 관리 페이지
    + 카테고리 관리 페이지
    + 댓글 관리 페이지
    + 카테고리 관리 팝업
    + 카테고리 이동 처리 팝업
      