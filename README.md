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
      


## 12월 30일
# 12월 30일
## 블로그 글 상세 페이지 (블로그 프로젝트)
### 잘된점
+ 이전까지는 레이아웃을 float 와 absolute , relative를 사용하여 잡았다
+ 이번부터는 flex를 적용하여 레이아웃을 잡았다

### 배운점
+ flex의 정렬 방식 - row , column
+ items 요소들을 container로 감싸서 정렬시킨다

## 개선할 점
+ 블로그 상세글 레이아웃의 content 내부 영역 레이아웃 수정

## sql
### 잘된점
+ order by를 사용하여 정렬하는 방식
+ DESC (내림차순) , ASC (오름차순)
+ 해커랭크에서 order by 관련 4문제 풀기

### 배운점
+ ROUND() 를 사용하여 소숫점 아래 n 번째 자리에서 반올림 처리
```
SELECT ROUND(long_w , 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;
```
+ LIMIT을 사용하여 정렬된 데이터중 보여주고 싶은 만큼만 추출하기
```
SELECT *
FROM products
ORDER BY price DESC
LIMIT 3;
```

+ SUBSTR()를 사용하여 문자열 자르기
```
SELECT name
FROM students
WHERE marks > 75
ORDER BY SUBSTR(name , -3) , ID ASC;

```
+ LEFT() - 문자열을 앞에서 부터 자른다
+ RIGHT() - 문자열을 뒤에서 부터 자른다
```
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name , 3) , ID ASC;

```
+ SUBSTR(컬럼 , -3) - 컬럼 데이터를 뒤에서부터 3개 자르겠다
```
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name , 3) , ID ASC;
```

## 자바스크립트
### 끝말잇기 게임 만들기
#### 잘된점
+ 끝말잇기 게임 동작 흐름 파악
+ 함수간 호출 흐름 파악

#### 배운점
+ document.querySelector를 사용하여 html 태그와 id , class 선택자를 선택하는 방법
```
let $input = document.querySelector('input');
let $word = document.querySelector('#word');
let $button = document.querySelector('button');
let $order = document.querySelector('#order');



```
+ addEventListener를 사용하여 선택자에 이벤트를 발생시키는 방법
```
 $input.addEventListener('input' , checkInput);
 $button.addEventListener('click' , buttonClick);
```

#### 개선 사항
+ 구조파악은 완료 했다
+ 코드를 보지 않고 스스로 구조도를 그리고 코딩할 수 있도록 연습하자



# 12월 31일
## 블로그 프로젝트
### 잘된점
+ flex를 사용하여 블로그글 상세페이지 컨텐츠 부분 레이아웃 설계
+ flex를 사용하여 블로그글 상세페이지 댓글 부분 레이아웃 설계

### 향후 계획
+ 블로그 글 상세페이지 페이징처리 레리아웃 , 카드 형식으로 연관된 글 보여주는 레이아웃 설계
+ 관리자 메인페이지
+ 관리자 글 관리 페이지
+ 관리자 카테고리 관리 페이지
+ 관리자 댓글 관리 페이지

### 아쉬운점
+ 하루에 한 페이지는 마무리 할수 있도록 하자

## 자바스크립트 - 끝말잇기 게임
### 잘됨점
+ 코드흐름 파악하여 구조도를 그려보았다
+ 모르는 문법 내용을 구글링하여 정리하였다
+ 책을 보지 않고 완전히 이해하여 직접 만들어 보았다
+ 직접 중복되는 코드를 제거하고 리펙토링을 진행해 보았다
```
  function buttonClick() {

      // 코드 리펙토링
      // 순서를 넘기는 코드가 중복된다
      // 첫번째 순서이거나 다음 사람이 올바른 단어를 입력했을 때 다음 순서로 넘겨줘야 한다
      if ( !gameWord || gameWord[gameWord.length - 1] === inputWord[0] ) {

          /*
              textContent
              - html 태그 요소가 갖고 있는 텍스트 값을 가져온다
              - 참고 - https://hianna.tistory.com/483
          
          */
          gameWord = inputWord;
          $word.textContent = gameWord;


          // 첫번째 사람이 입력한 후에도 순서는 다음 순서롤 넘어가 져야 한다
          // 총 게임 참여 인원수 : players
          // 현재 순서 : order
          nowOrder = Number($order.textContent);

          if (nowOrder + 1 > players) {
              //순서가 다시 1번 으로 돌아간다
              nowOrder = 1;
              $order.textContent = Number(nowOrder);
          } else {
              // 현재 순서에 1을 더해준다
              nowOrder += 1;
              $order.textContent = Number(nowOrder);
          }

          $word.textContent = "";
          $input.focus();


      } else {
          // 기존 제시어가 그대로 보여져야 한다
          $word.textContent = gameWord;
          alert('올바른 단어가 아닙니다.');
          $input.focus();
      }
 } 



```

### 배운점
+ document.querySelector()를 사용하여 html 문서의 태그 , id 선택자 , class 선택자 등 요소를 선택한다
+ addEventListener('event명' , 콜백함수명)
+ document 요소를 이벤트와 연결해주기 위해 사용하는 함수
+ 이벤트가 발생되었을때 실행될 콜백함수를 두번째 인자로 넣어준다

### 향후 계획
+ 앞으로도 지금처럼 꾸준히 하자

## SQL - 집계함수
### 잘된점
+ 집계함수의 개념과 사용방법을 이해 하였다
+ 이를 바탕으로 해커랭크에서 집계함수 관련 문제 6개를 풀어보았다

### 배운점
+ COUNT(*)
+ 테이블에 있는 데이터 레코드의 개수를 전부 더해준다
+ 단 , NULL 값이 들어있는 row도 포함한다
+ 특정 컬럼의 값을 중복을 제거하고 로우의 개수를 카운트 하는 경우
+ count(distince 컬럼명) 을 사용한다

+ SUM()
+ 특정 컬럼 데이터 값의 총합을 구하고 싶을 때 사용
+ 특정 컬럼의 데이터 값이 NULL 인 경우 해당 로우는 제외한다


+ AVG()
+ 특정 컬럼 데이터 값의 평균을 구하고 싶을 때 사용
+ 단 컬럼 값에 null이 들어가 있는 경우 나눌때 해당 로우는 제외하고 나눈다
+ 이런경우 해결책
```
SELECT SUM(price)/COUNT(*)
FROM products;
```
+ price 컬럼의 총합을 구한후 총 row의 개수로 나눈다
+ count(*) 하면 null 값이 들어가 있는 로우도 포함하여 카운팅 해주기 때문이다

+ MIN()
+ 특정 컬럼에서 최솟값을 구할때 사용한다

+ MAX()
+ 특정 컬럼에서 최댓값을 구할때 사용한다



# 2022년 01월 01일
## CSS - flex (justify-content , align-items , wrap)
#### 잘된점
+ flex-container 내부 요소를 정려할때 주축과 교차축의 개념에 대해 이해함
+ flex-container의 width보다 내부 요소들의 width의 합이 더 클때 wrap을 사용하면 wrap 속성에 속성 값으로 wrap 과 no-wrap을 줬을떄 차이를 이애함

#### 배운점
+ flex-container의 flex-direction이 row 인지 column인 지에 따라 내부 요소를 정렬할때 주축 과 교차축이 결정된다
+ no-wrap : flex-container의 width 보다 내부 요소들의 너비 합이 더 큰 경우
  + 내부 요소들의 너비를 줄여 한줄에 배치 시킨다
+ wrap : flex-container의 width 보다 내부 요소들의 너비 합이 더 큰 경우
  + 내부 요소를 두 줄로 배치한다


## 블로그 프로젝트
### 블로그 글 상세페이지 header 작업
#### 기준 버전
+ 전체 적인 레이아웃을 화면 가운데 위치 시키기 위해 width: 100% 와 margin-left: 15% 를 사용하여 작업을 진행했다
+ 하지만 블로그를 사용하는 사용자 입장에서 불편할것 같다는 생각이 들었다
+ 따라서 , 헤더 부분을 full-page 헤더로 수정해 보았다

#### 효과
+ 훨씬 깔끔해지고 화면을 넓게 쓰는 느낌이 들어 줗았다
+ 앞으로 다른 페이지의 div 레이아웃 들도 full-page 레이아웃으로 변경할 예정이다


### 블로그 글 상세페이지 카드 레이아웃 작업
#### 잘된점
+ 오늘 배운 flex-container 축 기반 정렬 방식을 사용하여 4개의 카드레이아웃을 하나의 컨테이너에 가로 방향으로 배치시켰다

#### 배운점
+ 긴존에 div를 정렬때는 float을 사용했었다
+ 항상 clear를 해줘야 했고 특히 가운데 정렬할때 어려운 점이 많았다
+ 하지만 flex-container를 기준으로 가록 축 방향 , 세로 축 방향 정렬을 사용하니
+ 훨씬 레이아웃 작업을 하기 편했다
+ 추후 블로그 관리자 페이지 작업할때 계속 사용할 예정이다


# 2022년 01월 02일
## sql - group by having

### 잘된점
+ GROUP BY 에 대한 이해
+ 그룹에 조건을 지정하는 HAVING에 대한 이해

### 배운점
+ GROUP BY 를 사용하여 데이터를 그룹으로 묶는다
+ GROUP BY 절에 컬럼 여러개를 지정하여 그룹을 세분화 할수 있다
+ HAVING을 사용하여 그룹에 대한 조건을 지정할 수 있다
  + 그룹내에서 범위를 더 세분화 시킨다
+ [GROUP BY HAVING 상세 정리 내용](https://unique-wandflower-4cc.notion.site/GROUP-BY-HAVING-16fe13666683466c95af034ca6c86097)

## css - 선택자 , 결합자
### 잘된점
+ 특성 선택자에 대한 이해
+ 결합 선택자에 대한 이해

### 배운점
+ 특성 선택자
  + HTML 속성의 존재 여부나 속성 값에 따라 요소를 선택할수 있다
```
[class="text"] {
  color: green;
}

[id="unique"]{
  color: red;
}

<h1>선택자 연습하기</h1>
<p>1번 문단입니다. 그냥 태그</p>
<p class="text">2번 문단입니다. 그냥 태그</p>
<p id="unique">3번 문단입니다. 그냥 태그</p>
<p class="text">4번 문단입니다. 그냥 태그</p>
<p>5번 문단입니다. <span>스판 있는</span> 태그</p>

```

 + 기호를 추가하여 선택자를 다양화 할 수 있다
 ```
    [class *= "t"] {
        color: greenyellow;
    }
    
    [class $= "st"] {
        color: red;
    }

    [id ^= "uni"]{
        color: pink;
    }
    
    <h1>선택자 연습하기</h1>
    <p class="test">1번 문단입니다. 그냥 태그</p>
    <p class="text">2번 문단입니다. 그냥 태그</p>
    <p id="unique">3번 문단입니다. 그냥 태그</p>
    <p class="text">4번 문단입니다. 그냥 태그</p>
    <p>5번 문단입니다. <span>스판 있는</span> 태그</p>

 ```
 + [특성 선택자 상세 정리 내용](https://unique-wandflower-4cc.notion.site/2-006998b9ccd8489ca104d87fd05bd15b)

+ 결합 선택자
 + 두개 이상의 선택자를 결합시켜 결합된 조건을 만족하는 요소를 선택한다
    + 자손 결합자
    + 두 개의 선태자 중 선택자 요소의 첫번째 자손을 선택할 수 있다
    ```
     body h1 {
      color: darkgoldenrod;      
     }

    p > span {
      color: red;
    }

    <h1>선택자 연습하기</h1>
    <p>1번 문단입니다. 그냥 태그</p>
    <p>2번 문단입니다. 그냥 태그</p>
    <p>3번 문단입니다. 그냥 태그</p>
    <p>4번 문단입니다. 그냥 태그</p>
    <p>5번 문단입니다. <span>스판 있는</span> 태그</p>



    ```
    + 형제 결합자  
    + 두 개의 선택자 중 선택자 요소의 첫 번째  형제를 선택한다
    ```
        h1 + p {
          color: red;
        }

        .text + p {
          color: indigo;
        }

        <h1>선택자 연습하기</h1>
        <p>1번 문단입니다. 그냥 태그</p>
        <p class="text">2번 문단입니다. 그냥 태그</p>
        <p>3번 문단입니다. 그냥 태그</p>
        <p class="text">4번 문단입니다. 그냥 태그</p>
        <p>5번 문단입니다. <span>스판 있는</span> 태그</p>
    ```
  + [결합 선택자 정리 내용](https://unique-wandflower-4cc.notion.site/1-8810d684f4464a72a43a5a54e3ed3527)

 
## 블로그 프로젝트 
### 잘된점
+ 블로그 글 상세페이지의 글이 속한 카테고리 표시하는 레이아웃 작업 
+ 글에 대한 문의 버튼 추가하는 레이아웃 작업
+ 블로그 글 상세페이지 레이아웃 작업 완료
### 배운점
+ flex-container의 정렬 방향을 기준으로 주축 과 교차축의 정렬방식을 지정하는 방법
+ position 속성을 사용했을때 보다 효율적이고 빠르게 div 요소를 정렬할 수 있었다
### 향후 계획
+ 블로그 관리자 메인 페이지
+ 블로그 관리자 글 관리 페이지
+ 블로그 관리자 카테고리 관리 페이지
+ 블로그 관리자 댓글 관리 페이지


# 2022년 01월 03일
## 블로그 프로젝트
### 잘된점
+ flex를 사용하여 블로그 관라지 페이지 레이아웃 작업 진행
+ css 에서 특성선택자를 사용하여 코드 리펙토링
+ 순수하게 flex만을 사용하여 레이아웃 정렬

### 배운점
+ flex를 사용할 때와 position 속성을 사용하여 정려할 때의 차이를 명확하게 느낄수 있었다
+ flex-direction에 따른 주축 과 교차축 설정 방법
+ justify-content를 사용하여 컨테이너가 감싸고 있는 전체 div를 가로 방향으로 정렬
+ align-items를 사용하여 컨테이너가 감싸고 있는 전체 div를 세로 방향으로 정렬
+ 특성선택자를 통해 html 요소를 더욱 명확하게 선택할 수 있었다
+ 부모 요소 내부에 자식요소를 선택할 때 결합 선택자를 사용하여 관계를 확실하게 표현할 수 있었다



### 향후 계획
+ 관리자 메인페이지 chart.js 적용
+ 글 관리 페이지
+ 카테고리 관리 페이지
+ 댓글 관리 페이지
+ 채팅

## CSS - 가상 클래스
### 배운점
+ 가상 클래스의 종류와 어떤 상황에서 어떻게 사용해야 하는 지 실습해 볼수 있었다
+ [가상 클래스 정리 내용](https://unique-wandflower-4cc.notion.site/745777ad807443c9b4c0d0c0d11dc2de)

## SQL - GROUP BY HAVING 문제풀이
### 잘된점
+ group by를 사용하여 그룹내부에서 데이터들의 로우 개수를 구하는 방법을 확실히 이해하였다

### 배운점
+ SQL 문 실행 순서
+ GROUP BY 와 COUNT() 관계
  + 그룹 내부에서 그룹에 속한 데이터들의 row 개수를 카운팅 한다
+ [GROUP BY HAVING 문제풀이 및 정리내용](https://unique-wandflower-4cc.notion.site/GROUP-BY-HAVING-e6f510ddda2a4131b8ce5e0dc9e3f0ec)

## 자바스크립트
### 잘된점
+ 끝말잇기 게임을 구조도를 직접 그린 후 스스로 코딩 하였다
+ 쿵쿵따 게임도 구조도를 직접 그린 후 스스로 코딩 하였다

### 배운점
+ NULL vs UNDEFINED
+ 문자열에서 특정 인덱스에 해당하는 문자 추출하는 방법
+ HTML 요소에서 텍스트를 가져오는 방법
+ innerHTML vs innerText vs textContent 차이
+ [끝말잇기 상세 정리 내용](https://unique-wandflower-4cc.notion.site/20d93fcbb70f465fabd045214dd9a31e)
+ [쿵쿵따 상세 정리 내용](https://unique-wandflower-4cc.notion.site/dcd8df52d6e7426eaaab400004d65a24)



# 01월 04일
## 자바스크립트
### 잘된점
+ 끝말잇기 구조도 수정
+ 구조도 바탕으로 코딩
+ 코드리뷰 하면서 코드 내용 정리
+ 중복되는 코드 리펙토링
+ [끝말잇기 리펙토링 및 정리 내용](https://unique-wandflower-4cc.notion.site/20d93fcbb70f465fabd045214dd9a31e)

### 배운점
+ prompt() vs alert() vs confirm()
+ Number() vs parseInt()
+ event
+ querySelector() vs querySelectorAll()

### 향후 계획
+ 게산기 만들기
+ 숫자야구 게임


## SQL
### 잘된점
+ CASE WHEN THEN 목적
+ GROUP BY 와 함꼐 사용하는 방법
+ [CASE WHEN THEN 정리 내용](https://unique-wandflower-4cc.notion.site/CASE-WHEN-THEN-be22d892197a4928a247f27c134358c5)

### 배운점
+ GROUP BY 와 함꼐 CASE WHEN THEN 사용하기

### 향후 계획
+ CASE WHEN THEN 해커랭크 문제 풀기
+ JOIN
+ UNION 


## 블로그 프로젝트
### 잘된점
+ 관리자 메인페이지에 chart.js를 사용하여 라인 차트 생성
+ flex를 사용하여 관리자 메인페이지 레이아웃 마무리 작업 진행

### 배운점
+ chart.js cdn 사용하는 방법
+ chart.js 에서 라인차트 생성하는 방법
```
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.js"></script>
<script>
      const $chart = document.querySelector('#myChart').getContext('2d');
      const myChart = new Chart($chart , {
        type: 'line',
        data: {
            labels: ['January', 'Feb', 'March', 'April', 'May', 'June' , 'July'],
            datasets: [{
                yAxisID: 'y',
                label: '블로그 월별 방문자 그래프',
                data: [12, 19, 3, 5, 2, 3 , 16],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    max: 25,
                    ticks: {
                        beginAtZero: true,
                        
                    }
                    
                }
            }
        }
    });
</script>

```
### 향후 계획
+ 관리자 글 관리 페이지
+ 관리자 카테고리 관리 페이지
+ 관리자 댓글 관리 페이지


# 01월 05일
## 블로그 프로젝트
### 잘된점
+ flex를 사용하여 자식 컨테이너 하위 자식 컨테이너의 요소 정렬
+ flex와 a태그를 사용하여 페이징 작업 진행

### 배운점
+ flex를 사용하여 자식 컨테이너 하위에 있는 div 요소의 레이아웃 정렬
```
 [class="middle_content"] {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        margin-top: 40px;
        width: 100%;
        height: 900px;
        border: 1px solid red;
    }

  .middle_content  .content_left {
      display: flex;
      flex-direction: column;
      justify-content: space-around;
      align-items: center;
      margin-top: 20px;
      width: 175px;
      height: 850px;
      border: 1px solid red;
      margin-left: 10px;
      
  }

  .middle_content > .content_left  > .content_top {
      width: 160px;
      height: 200px;
      border: 1px solid black;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
  }

      .middle_content > .content_left  > .content_top img {
      width: 50px;
      margin-top: -16px;
  }

  .middle_content > .content_left  > .content_top h4 {
      margin-top: 20px;
  }


  <div class="middle_content">
      <div class="content_left">
          <div class="content_top">
              <img src="../version1/images/login_image.png">
              <h4>DevLog.CMY</h4>
              <button type="button">블로그 관리홈</button>
          </div>
      </div>
  </div>     

```

### 향후 계획
+ 카테고리 관리자 페이지
+ 댓글 관리자 페이지
+ 채팅 관리자 페이지

## 자바스크립트
### 잘된점
+ 계산기 진행 흐름에 대한 구조도 그림
+ 구조도를 바탕으로 코딩 진행
+ 코드리뷰하면서 내용 정리
+ 리펙토링 방향에 대해 정리
+ [계산기 코딩 과정 및 흐름 정리](https://unique-wandflower-4cc.notion.site/98f7c3bc81eb468785cce3fb696a247b)

### 배운점
+ 숫자를 클릭했을때 어떻게 구분할 것인가
  + 연산자의 앞과 뒤에 숫자가 오는데 이를 어떻게 구분할 것인가
+ 연산자를 클릭할때 숫자 없는 경우 어떻게 처리할 것인가
+ `=` 연산자를 클릭했을때 어떻게 계산하여 결과를 화면에 보여줄 것인가

### 개선해야 할 점
+ `=` 연산자를 클릭했을때 처리하는 콜백함수 리펙토링
+ 숫자를 클릭했을때 값을 저장하는 변수를 재활용하는 방법에 대한 고민 필요


## SQL
### 잘된점
+ CASE WHEN THEN 절을 사용하여 삼각형이 될 조건을 구하는 문제 해결
+ [문제 해결 과정 정리](https://unique-wandflower-4cc.notion.site/CASE-bfad008bd1c04d219ca887bea24cc2fa)

### 배운점
+ 직관적으로 단순하게 문제에 접근하는 방법
+ 정삼각형 : 세변의 길이가 모두 같다
+ 이등변삼각형 : 두변의 길이만 같다
+ 그냥 삼각형 : 세변의 길이가 모두 다르다
+ 하나씩 select 해보면서 조건을 추려나가야 한다

### 개선할 점
+ 어렵게 생각하지 말자
+ 조급해 하지 말자




# 01월 06일
## SQL 
### CASE WHEN THEN을 사용한 피봇
#### 잘된점
+ 피봇에 대한 이해
+ CASE WHEN THEN을 사용하여 삼각형이 안될조건 구하기

### 배운점
+ CASE WHEN THEN을 사용하여 삼각형이 안될 조건 구하기
1. 전체 데이터를 조회 해본다
2. 삼각형이 될 수 없는 조건을 가진 데이터를 분류한다
3. 정삼각형이 될 수 있는 조건을 가진 데이터를 분류한다
4. 이등변삼각형이 될 수 있는 조건을 가진 데이터를 분류한다
5. 그외는 삼각형이 될 수 있는 조건이다
```
SELECT  CASE 
          WHEN GREATEST(A , B , C) >= A + B THEN 'Not A Triangle'
          WHEN A = B && B = C THEN 'Equilateral'
          WHEN GREATEST(A , B , C) < A + C AND (A = C OR A = B) THEN 'Isosceles'
          ELSE 'Scalene'
       END 
FROM triangles;

```

+ 짐계함수를 사용한 데이터를 가로로 한줄에 출력할때 사용한다
+ 카테고리아이디 별 평균가격을 가로로 한출에 출력
```
SELECT 
			AVG(CASE WHEN categoryid = 1 THEN price ELSE NULL END) AS 'category1_price' ,
			AVG(CASE WHEN categoryid = 2 THEN price ELSE NULL END) AS 'category2_price' ,
			AVG(CASE WHEN categoryid = 3 THEN price ELSE NULL END) AS 'category3_price'
FROM Products;


```
## 자바스크립트 

### 계산기 코드 리펙토링
1. 숫자를 클릭하고 값을 저장하는 변수를 재활용할수 있는 방법에 대한 고민
 + 첫번째 숫자를 홤녀에 보여주고 난 후 변수를 초기화 해준다
 + 연산자 클릭후 두번째 숫자가 입력되었을때 변수를 재활용한다
2. 연산자를 클릭하는 부분
  + 연산자를 클릭하기 전 첫번째 숫자를 담는 변수에 값이 비어있는지 비어있지 않은지만 체크해 준다
  + 값이 비어있지 않을 때 연산자를 클릭할 수 있게 처리한다
3. = 연산자를 클릭했을때 모든 식이 올바르게 되었는지 검사
  + firstNum , operator , secondNum 변수에 값이 제대로 들어와 있는지 검사
  + = 연산자는 계산을 처리하여 실제 결과값을 도출해 내는 과정이므로 하나의 함수로 분리하여 작성한다
4. clear 버튼 클릭시 입력했던 식 과 숫자 전체를 초기화 시킨다
  + 클릭한 연산자를 보여주는 부분과 계산 결과를 보여주는 부분 초기화



  # 01월 07일

  ## 자바스크립트
  ### 계산기 코드 리펙토링
  #### 잘된점
  + 계산기 고차함수를 사용한 리펙토링
  + 계산기 event 객체를 사용한 콜백함수 리펙토링
  + [계산기 리펙토링 상세 과정](https://unique-wandflower-4cc.notion.site/30ea0202714e42ba95eaf1a2bc92d70f
  
  
  ## 블로그 프로젝트
  ### 잘된점
  + 카테고리 관리자 페이지 레이아웃 작업 진행
  + flex를 사용하여 계층 레이아웃 표현


  ## SQL
  ### 각 부서별 1월 부터 12월 까지 연봉을 정렬
  ### 배운점
  + 피봇을 사용하면 데이터를 가롤로 정렬시킬수 있다
  + group by 를 한뒤 피봇을 사용하면 그룹별 데이터들을 가로로 정렬시킬 수 있다
  + [피봇 정리 내용 참고](https://unique-wandflower-4cc.notion.site/CASE-9c981542402142cdaa865ad7afd9e0f5)



# 01월 10일
## 블로그 레이아웃
### 잘된점
+ 관리자 채팅 페이지 레이아웃 작업 진행
+ 고객 채팅 팝업 레이아웃 작업 진행

### 개선해야 하는 부분
+ 채팅 입력하는 부분 레이아웃 수정
+ 채팅창에 필요한 데이터가 어떤게 있어야 할지 고민해 볼것

## 자바스크립트 숫자야구
### 잘된점
+ 컴퓨터가 랜덤으로 데이터를 골라 배열에 저장시키기
+ 컴튜터가 뽑은 데이터가 들어있는 배열과 사용자가 뽑은 데이터가 들어있는 배열을 비교하여 
+ 홈런  ,  strike , ball , out 판단 하는 로직 설계
+ [숫자야구 상세 정리 내용](https://unique-wandflower-4cc.notion.site/399b8c1d9a0f4a8d8d147979ff79f2c3)

### 개선할 부분
+ 결과가 한번 판단되고 게임이 종료되는 것이 아닌 계속 지속될수 있게 만들것
+ 홈런이 나오고나 아웃카운트가 누적 4번 되었을때 게임이 종료되게 할것
+ 배열에 중복 없는 데이터를 저장하는 로직 수정할것



## sql
### 잘된점
+ JOIN에 대한 이해
+ INNER JOIN에 대한 이해

### 배운점
+ JOIN은 서로 관련 있는 두개 이상의 테이블을 이어붙여 흩어져 있는 
+ 정보들을 한번에 가져오기 위해 사용한다
+ INNER JOIN
```
SELECT *
FROM Users , Orders
WHERE Users.ID = Orders.userId;
```
+ Users 테이블과 Orders 테이블을 ID 와 userId가 같은 데이터를 갖고 있는 
+ row를 기준으로 조인 시키겠다
+ 양쪽 테이블에 조인 조건에 해다앟는 데이터가 일치해야만 조인이 될 수 있다
+ [INNER JOIN 정리 내용](https://unique-wandflower-4cc.notion.site/JOIN-9913a5dc1bf647709091326c819cd26b)






# 01월 11일
## 블로그 프로젝트
### 잘된점
+ 로그인 버튼 클릭했을때 기존 레이아웃을 팝업으로 띄우기
+ 회원가입 버튼 클릭했을때 기존 레이아웃을 팝업으로 띄우기


## 자바스크립트 숫자야구
### 잘된점 
+ 코드 구조도 다시 그리고 리펙토링 진행
  + 사용자가 입력한 숫자가 4자리 숫자인지
    + 4자리가 아닌경우 예외처리
    + 입력한 숫자중 중복된 값이 있는 경우 어떻게 처리할 것인가
  + 컴퓨터 입력한 숫자중 중복되는 값이 있는 경우 어떻게 처리할 것인가
  + 홈런 , 스트라이크 , 볼 , 아웃을 판단하는 조건을 어떻게 구성할 것인가
  + 게임이 홈런이 달성되거나 아웃이 누적 3번됬을때 까지 유지되고 그 이후에 종료시키는 구조를 어떻게 구현할 것인가
### 배운점
+ 배열의 각 요소를 중복 제거하는 방법
+ 랜덤으로 정수를 뽑는 방법

## sql

### 잘된점
+ inner join 을 사용하여 해커랭크에서 문제 3개 풀기

### 배운점
+ 조인 조건을 지정하는 방식 ON 과 WHERE의 차이
+ [inner join을 사용하여 문제 풀고 개념 정리](https://unique-wandflower-4cc.notion.site/JOIN-9913a5dc1bf647709091326c819cd26b)

# 1월 13일
## 블로그 프로젝트
+ 메인페이지 레이아웃 header 와 footer로 레이아웃 분리



# 01월 14일

## 스프링
### 스프링 핵심 개념
+ IoC 와 DI
+ IoC : 객체의 생성부터 관리까지 스프링 컨테이너가 스캔하여 관리한다
+ DI :  객체를 직접 생성하지 않고 스프링 컨테이너에서 필요한곳에 주입해주는 방식 
+ [IoC와 DI 상세 정리 내용](https://unique-wandflower-4cc.notion.site/1-4ca2dce542774ea4a29cd3cc9758c491)


### 잘된점
+ spring IoC와 DI 가 왜 필요한지 이해할수 있었다


## 자바스크립트 숫자야구 리펙토링2차 진행

### 리펙토링 방향
- strike와 ball을 판단하는 로직에 반복문이 중복된다 반복문을 한번만 사용할 수 있는 방법을 찾아봐야 겟다 
- 홈런인지 판단하는 로직이 코드가 지저분 하다 줄일수 있는 방법을 찾아봐야 겠다 
- out ball strike를 화면에 표시해 줄때 효율적으로 분기문으로 처리하는 방법에 대해 코드를 수정해야 겠다 
    - 현재 몇 아운 상태인지 화면에 보여주는 기능 추가

### 잘된점
+ 리펙토링 진행 완료
+ 반복되는 코드의 중복을 함수를 선언하여 제거
+ 중첩 반복문을 제거하기 위해 join 함수와 indexOf 함수를 사용함
+ [숫자야구 2차 리펙토링 진행 내용](https://unique-wandflower-4cc.notion.site/2-06ce1cc7cc314f4fa4b75d3548182827)

### 개선할 점
+ append vs appendChild 의 차이에 대한 학습
+ createTextNode vs createElement의 차이에 대한 학습


# sql
## left , right join 
### 잘된점
+ left join 에 대한 이해
+ left join에 WHERE 조건을 줬을때와 ON 조건만 줬을때 차이에 대한 이해
+ right join 에 대한 이해 
+ TIL 리파제토리 각 항목별 폴더 정리
+ [outer join 정리 내용](https://unique-wandflower-4cc.notion.site/outer-join-left-right-6cef6e1bed684d13a508b3fe08740b96)

### 향후 계획
+ outer join 관련 문제풀고 노션에 풀이과정 정리



# 01월 15일

## spring
###  개념정리
+ 필터 와 리플렉션
+ 메시지 컨버터
+ [필터 정리 내용](https://unique-wandflower-4cc.notion.site/2-0def34ec9900434784adfda82012a3ff)
+ [메시지 컨버터 정리 내용](https://unique-wandflower-4cc.notion.site/3-2d046efb911d4459bfb4d971f43cc943)

### 배운점
+ 필터란 무엇이고 스프링에서는 어떻게 어노테이션을 사용하여 필터링을 진행하는가
+ 필터링을 진행하기 위해리플렉션을 통해 클래스에 선언된 어노테이션 , 필드 , 메서드를 분석한다


## sql

### outer join 문제풀이
+ 1.
+ customers 테이블과 orders 테이블의 LEFT JOIN 하여 한번도 주문하지 않은 
+ 고객의 이름을 추출한다

+ 2.
+ 입양 테이블에는 데이터가 있지만 동물 정보 테이블에는 데이터가 없는
+ 즉 , 입양은 갖지만 동물 테이블에서 동물 정보가 유실된 row를 추출한다
+ [상세 문제 풀이 과정 정리](https://unique-wandflower-4cc.notion.site/outer-join-79bd8c31133d4b038feb0431e1a76c2f)


### 잘된점
+ 문제를 전부 해결하였다

### 배운점
+ 문제를 읽고 주어진 상황에 맞게 LEFT JOIN 과 RIGHT JOIN을 사용하는 방법을 익힐수 있었다


# 01월 16일

## spring
### 잘된점
+ JPA란 무엇인지에 대한 이해
+ ORM이란 무엇인지에 대한 이해

### 배운점
+ JPA : 자바의 클래스 안에 있는 데이터를 영구히 기록할 수 있도록 환경을 제공하는 API
+ ORM : 자바 클래스를 기반으로 데이터베이스 테이블을 모델링하는 방법론
+ [JPA 상세 정리 내용](https://unique-wandflower-4cc.notion.site/JPA-27b29694fb7344749d51c4356cf4e56b)
+ [ORM 상세 정리 내용](https://unique-wandflower-4cc.notion.site/ORM-e4220c84435645db95ec929c37901dd9)


# 01월 17일
## 자바스크립트
### 잘된점
+ 로또 구조도 설계 및 코딩 진행
+ indexOf를 사용하여 배열 요소의 중복 제거
+ append를 사용하여 HTML 요소에 데이터 추가
+ setTimeOut을 사용하여 특정 시간에 한번만 작업이 수행될 수 있도록 함
+ [로또 정리 내용](https://unique-wandflower-4cc.notion.site/de5ee7df9fa9495794b6f1fe1e7cb07e)


### 배운점
+ setTimeOut과 setInterval 의 차이
+ [setTimeOut 과 setInterval 정리내용](https://unique-wandflower-4cc.notion.site/setInterval-vs-setTimeOut-382a7e5bcaf0464d9309abb808a1188a)


### 개선할 점
+ div를 미리 만들어 놓지 않고 로또 배열에서 값을 꺼낼때 div 요소가 만들어 지도록 리펙토링


## spring

### 잘된점
+ JPA에서 영속성 컨텍스트가 필요한 이유에 대한 이해
+ OOP 관점에서 모델링을 진행해야 하는 이유에 대한 이해
+ [영속성 컨텍스트](https://unique-wandflower-4cc.notion.site/6-dd5c610691c7409b90888ae25a3f91e9)
+ [OOP 관점에서 모델링](https://unique-wandflower-4cc.notion.site/7-OOP-84a078cff94a42569de93e64588031ae)


### 배운점
+ 영속선 컨텍스트를 통해 엔티티의 동일성이 보장된다
+ 엔티티가 변경되었을 경우 엔티티 매니저가 이를 감지하여 update 쿼리를 자동으로 생성해 준다

+ RDB에는 Object 타입의 데이터가 저장될 수 없다
+ 테이블간 관계가 있는 경우 select를 두번 하거나 조인을 하여 데이터를 조회 해야 한다
+ 하지만 OOP 형식으로 클래스를 만들면 JPA가 자동으로 테이블을 만들어 주고 Object 간 관계를 바탕으로 fk 를 생성해 준다
+ 이를 통해 데이터베이스와 OOP의 불일치가 해결된다


## sql


### 잘된점
+ UNION과 UNION ALL의 차이에 대한 이해
+ UNION과 JOIN의 차이에 대한 이해
+ 어떤 상황에서 UNION을 사용해야 하는지에 대한 이해
+ [UNION 과 UNION ALL 정리](https://unique-wandflower-4cc.notion.site/UNION-UNION-ALL-965a45fe2c9440249c76b2082cd9f9e6)


### 배운점
+ 따로따로 조회하던 데이터를 하나의 테이블에 위아래로 이어붙여서 보고싶을때 사용한다
+ UNION은 하나의 테이블에 데이터를 위 , 아래로 이어붙이는 것이다
+ UNION은 중복을 제거하고 붙여진다
+ UNION ALL은 중복 값이 있더라도 제거하지 않고 이어붙여 준다

### 개선할 점
+ UNION을 사용하여 같은 쌍을 갖는 숫자 찾기 문제 마무리 지을것
+ 데이터를 순서대로 나눠서 생각할것



# 01월 18일

## spring
## 잘된점
+ TCP/IP 와 HTTP 차이에 대한 이해
+ 웹서버와 톰켓에 대한 이해

## 배운점
+ TCP 방식은 서버와 클라이언트가 요청 과 응답을 주고 받은 후에도 연결이 계속 유지된다
+ 클라이언트와 서버 사이에 양방향 통신이 가능하다
+ HTTP는 클라이언트가 요청을 보내고 서버가 응답을 받으면 연결을 끊어버린다
+ 서버는 클라이언트의 상태를 보존하지 않는다
+ [TCP와 HTTP의 차이 정리](https://unique-wandflower-4cc.notion.site/8-HTTP-eeab580e8be7424791f48a547c55bccc)

+ 웹서버는 URL을 통해 자원의 위치에 접근해서 필요한 데이터를 응답해준다
+ 클라이언트가 보낸 요청을 처리해 준다
+ 웹서버는 정적인 파일만 처리가 가능하다

+ 톰켓은 자바코드를 컴파일하여 데이터를 html 문서에 덮어씌운후 Apache에게 돌려준다
+ 즉 , 동적인 데이터에 대한 처리가 가능하다
+ [웹 서버와 톰켓의 관계 정리](https://unique-wandflower-4cc.notion.site/9-29a4f8fcbc234cdfaea62241a89623b5)

+ 클라이언트가 요청을 보내면 웹 서버가 정적인 자원을 처리하고 동적인 자원은 톰켓에서 처리하여 하나의 html 파일에 데이터를 덮어씌운후 html 파일을 클라이언트에게 응답해 준다


## 개선할 점
+ TCP와 HTTP에 대해 더 구체적으로 정리
+ 웹 서버와 톰켓 관계에 대해 구제척으로 조사하여 정리

## 자바
### 잘된점
+ chapter02 변수 , 타입 , 연산자 문제풀고 정리

### 배운점
+ [변수 타입 연산자 정리 내용](https://unique-wandflower-4cc.notion.site/ch2-554cc27ebb374bd79539d0ea2fcd6268)


### 개선할 점
+ 집중력 있게 하루에 한 챕터씩 끝낼수 있도록!!


## SQL

### 잘된점
+ SELF JOIN 관련 문제 2개 해결하였다
+ 날짜관련 함수의 사용방법을 이해하였다
+ 문제 상황에 맞게 어떤 데이터를 사용하여 SELF JOIN 해야하는 지 파악할 수 있었다
+ [SELF JOIN 문제 풀이과정](https://unique-wandflower-4cc.notion.site/SELF-JOIN-12a842e15f694dbf9d716712f461acf0)


### 배운점
+ 특정 날짜를 기준으로 기간 만큼 더하거나 빼야할 때 사용할 수 있는 DATE_ADD 함수와 DATE_SUB 함수
+ [MySQL 날짜 더하기 빼기 함수](https://unique-wandflower-4cc.notion.site/MySQL-7eb332d6073b4875ab844a422c1fd42b)
- 현재 날짜에 1일 더하기

```sql
DATE_ADD(now() , INTERVAL 1 DAY);
```

- 현재 날짜에 1일 빼기

```sql
DATE_SUB(now() , INTERVAL 1 DAY);
```

## 자바스크립트 - 로또 2차 리펙토링 진행
### 잘된점
+ 로또 추첨기 2차 리펙토링 완료
+ 로또 번호를 화면에 보여줄때 div 요소가 하나씩 생성되도록 개선
+ 일정 시간 간격으로 div 요소가 만들어지고 다음 div 요소가 화면에 보여지도록 개선

### 배운점
+ Document를 사용하여 HTML 요소를 조작하는 방법
+ 타이머 관련 함수를 사용하여 특정 시간 마다 혹은 특정 시간에 한번 함수를 실행시키는 방법

### 개선할 점
+ 로또 번호 중복을 검사하는 함수에 if문이 중첩 되지 않게 코드를 작성하는 방법에 대한 고민 필요


# 01월 19일
## SQL
### 잘된점
+ UNION 과 SELF JOIN을 사용하여 문제 해결

### 배운점
+ UNION은 두개의 테이을 을 위아래로 이어 붙여 하나의 테이블로 만드는 것이다
+ UNION 된 상태에서 ORDER BY는 상위 쿼리에 붙일수 없다
+ 즉 , UNION 된 결과 테이블에 대해서 ORDER BY를 붙여야 
+ 정렬된 결과가 올바르게 나온다
+ [문제풀이 과정](https://unique-wandflower-4cc.notion.site/UNION-UNION-ALL-3913e577da7047e4a16068cfde967ea0)

### 개선할 점
+ 문제가 영어라고 겁먹지 말자~!!

## 자바스크립트

### 잘된점
+ 로또 추첨기 3차 리펙토링 진행 완료

### 배운점
+ for문을 forEach 함수를 사용하여 축약시킬수 있다
+ 배열을 초기화 할때 Array(n) 을 사용하여 길이가 n인 배열이 만들어 진다
+ Sort함수를 사용하여 데이터를 정렬할 수 있다

## 개선할 점
+ map에 대한 더 정확한 이해 필요
+ 로또 번호화 보너스 번호를 분리하여 넣는 부분도 map을 사용하는 방양으로 고민 필요


# 01월 20일

## 자바스크립트 가위바위보 게임
### 잘된점
+ 가위바위보 게임 구현 진행
+ Array 함수 , forEach , setTimeout 을 적용하여 구현 진행
+ [가위바위보 게임 상세 정리 내용](https://unique-wandflower-4cc.notion.site/8a49c7324cd347edb499a3209925cbbd)

### 개선할 점
+ 현재는 가위 바위 보 버튼을 클릭하는 식으로 화면구성이 되있다
+ 버튼에 이미지를 넣고 버튼을 클릭했을때 해당 이미지가 화면에 보여지도록 구현 하는 방식에 대한 고민 필요

## sql

### 잘된점
+ CASE WHEN THEN 조건을 사용하여 UPDATE 관련 문제 해결

### 배운점
+ CASE WHEN THEN 조건을 사용하여 UPDATE시 여러 컬럼에 대한 분기문을 작성하는데 도움을 준다
+ [sql 문제 풀이과정 정리](https://unique-wandflower-4cc.notion.site/UPDATE-2573af51a76941cabe6ee0e413590961)


## spring

### 배운점
+ servlet 컨테이너란 무엇이고 객체 생성과정에 대한 이해
+ web.xml이 어떤 기능을 하고 왜 필요한지에 대한 이해
+ [servlet 컨테이너](https://unique-wandflower-4cc.notion.site/10-4bafc399cd444c6d8a10ddb9c4677c2a)
+ [웹 배포 서술자 web.xml](https://unique-wandflower-4cc.notion.site/11-8ecb80d8a1d049688551bcd2936b4259)

### 개선할 점
+ 서블릿 컨테이너가 왜 필요한 지 확실히 이해할 것
+ 서블릿 컨테이너가 객체를 생성하는 과정과 스레드의 관계에 대해 명확히 이해할것


# 01월 21일

## spring

### 잘된점
+ DispatcherServlet 과 기존 Servlet 방식의 차이에 대한 이해
+ ApplicationContext가 무엇이가 왜 필요한지에 대한 이해
+ [DispatcherServlet 정리 내용](https://unique-wandflower-4cc.notion.site/12-7fecaceb0ebc4c5689f78189d9fe04c7)
+ [ApplicationContext 정리 내용](https://unique-wandflower-4cc.notion.site/13-40e47eb7a7614d4e8095c5baef6cf573)

### 배운점
+ DispatcherServlet의 역할과 필요한 이유
+ 기존 Servlet과 DispatcherServlet이 어떻게 다른가
+ DispatcherServlet에 의해 생성되는 객체를 관리하는 방법
+ ApplicationContext 방법과 BeanFacotry 방법의 차이



## 자바스크립트

### 잘된점
+ 가위바위보 게임 2차 리펙토링 진행
+ 사용자가 버튼을 클릭했을때 값에 맞는 이미지 보여주기
+ 컴퓨터가 랜덤으로 뽑은 값에 맞는 이미지 보여주기

### 배운점
+ createElement 함수를 사용하여 img 요소를 생성하였다
+ img 요소에 src 속성에 value 값에 해당하는 이미지 경로를 설정해 두고
+ img 태그를 노드에 랜더링 시켜줬다
+ [가위바위보 게임 2차 리펙토링 ](https://unique-wandflower-4cc.notion.site/2-45f5d99bc10b492387bffa6ca1493bad)

### 개선할 점
+ 버튼을 클릭한 값에 따라 이미지가 제대로 나오지 않는 경우가 있다
+ 이미지를 올바르게 가져올수 있는 방법에 대한 고민 필요

## SQL

### 잘된점
+ 프로그래머스에서 select 관련 문제 7개 풀어보았다
+ 풀이 과정을 정리하였다
+ [select 관련 문제 풀이과정 정리](https://unique-wandflower-4cc.notion.site/SELECT-15b0ca1190c44877af8e8210d915f592)


# 01월 22일
## spring

### 잘된점
+ WebServer 와 WAS의 차이에 대한 이해
+ Servlet 동작 구조와 Dispatcher Servelt 의 역할
+ web.xml의 역할 과 상세 설정 정보에 대한 이해
+ spring 컨테이너가 bean을 등록하는 방식과 등록하는 과정에 대한 이해

### 배운점
+ Spring이 데이터를 응답해주는 방법에 대한 이해
+ Handler Mapping을 통해 클라이언트의 요청을 처리할 컨트롤러를 찾는 과정

### 정리내용
+ [서블릿 객체의 생명주기](https://unique-wandflower-4cc.notion.site/10-4bafc399cd444c6d8a10ddb9c4677c2a)
+ [웹 배포서술자](https://unique-wandflower-4cc.notion.site/11-web-xml-8ecb80d8a1d049688551bcd2936b4259)
+ [디스패처 서블릿](https://unique-wandflower-4cc.notion.site/12-7fecaceb0ebc4c5689f78189d9fe04c7)
+ [애플리케이션 컨텍스트](https://unique-wandflower-4cc.notion.site/13-40e47eb7a7614d4e8095c5baef6cf573)
+ [HandlerMapping과 spring이 데이터를 응답하는 방법](https://unique-wandflower-4cc.notion.site/14-spring-Response-80364720833e46de9623df5ee6517a12) 



# 01월 24일

## 자바스크립트

### 잘된점
+ 버튼을 클릭하기 전에는 이미지가 일정한 시간 간격을 랜덤하게 돌게 만들기
+ 버튼을 클릭햇을때 이미지를 보여주기
+ [가위바위보게임 3차 리펙토링 및 정리](https://unique-wandflower-4cc.notion.site/3-161006d7cddd44dcb2a0fc437fa2a344)


### 배운점
+ backgroundPositon 속성 : 이미지url , 가로위치 세로위치
+ backgroundSize 속성 : 전체 이미지를 가로크기와 세로크기로 자른다
+ [css background 속성](https://unique-wandflower-4cc.notion.site/4-background-03c458603a89474ead55324565697585)


# 01월 25일

# SQL
## 잘된점
+ 프로그래머스 GROUP BY 4문제 풀고 정리
+ [고양이와 개는 몇마리 있을까](https://unique-wandflower-4cc.notion.site/f97dd4c657784905a70ee3efba869d17)
+ [동명 동물수 찾기](https://unique-wandflower-4cc.notion.site/ece3ed023bd4416b8c32a5bc2ccac18d)

## 배운점
+ 컬럼의 타입이 datetime인 경우 시 정보만 추출하기 위해
+ date_format 함수와 HOUR 함수를 사용하여 추출할 수 있다
+ [datetime 관련 문제1](https://unique-wandflower-4cc.notion.site/1-0c0e0a533ee64cc3b4277a84f76a5281)
+ [datetime 관련 문제2](https://unique-wandflower-4cc.notion.site/2-c7403801493f4e75ba849318908608f0)

## 개선할 점
+ 테이블에 조건에 해당하는 시간정보가 없는 경우 조건을 맞추기 위해 SET 을 사용하는 방법에 대한 추가학습 필요

# 자바스크립트
## 잘된점
+ 반응속도 테스트 게임 구조도 그리고 코딩 진행

## 배운점
+ 사용자가 버튼을 클릭하기 까지 시간을 계산하기 위해 함수의 실행될때의 시간과 
+ 사용자가 버튼을 클릭했을때의 시간을 구해 후자에서 전자를 빼줘서 반응하는데 얼마나 걸리는지 계산했다
+ [반응 속도 테스트 정리 내용](https://unique-wandflower-4cc.notion.site/8b92b7270d66478cbb218c4bb9c687a1)

## 개선해야 하는 부분

+ 배경색이 초록색으로 바뀌지 않았을때 클릭 막기
+ 평균 반응시간
+ 반응시간 순위 매기기


# 01월 26일
## 자바
### 잘된점
+ 상속 개념에 대한 이해와 문제풀이
+ 베열관련 알고리즘 두문제 풀고 정리
+ [피보나치 수열](https://unique-wandflower-4cc.notion.site/4-9bdf065c02f942fe93609108daf7f879)
+ [소수 판별하기](https://unique-wandflower-4cc.notion.site/5-c9d314e84e16434a988b47042898c23d)

### 배운점
+ [상속의 특징](https://unique-wandflower-4cc.notion.site/ch10-147fe25e1ee94979874ff8ed2872b33f)
+ [업캐스팅과 메서드 오버라이딩](https://unique-wandflower-4cc.notion.site/d3e564b7627549bba579e1cd8941a83e)
+ [상속과 생성자 호출](https://unique-wandflower-4cc.notion.site/917db96a26984fbab7b2983762e396cd)
+ [ths , super , protected](https://unique-wandflower-4cc.notion.site/this-super-protected-b78ce0b4e54f463eb013ba319b7fe904)



# 01월 27일

## SQL

### 잘된점
+ 프로그래머스에서 NULL 판단을 위한 문제 4개 풀고 정리
+ 프로그래머스에서 JOIN 관련 문제 4개 풀고 정리
+ [NULL 판단을 위한 문제풀이](https://unique-wandflower-4cc.notion.site/IS-NULL-d26500e3aa744a37847272c273cdec2e)
+ [JOIN 관련 문제 풀이](https://unique-wandflower-4cc.notion.site/JOIN-d1a74d32fcae4d0a909dead17c0c7a9a)

### 배운점
+ LEFT JOIN 은 왼쪽 테이블이 기준이다
+ 왼쪽 테이블에는 있지만 오른쪽 테이블에 없는 데이터까지 같이 보고 싶을때 사용한다
+ ON: 조인을 하기 위한 테이블을 어떤 조건으로 붙일 것인가
+ WHERE: 붙인 테이블을 어떤 조건을 기준으로 조인 시킬 것인가


## 자바
### 잘된점
+ ArrayList 와 Random 클래스를 사용하여 주사위 2개를 던졌을때 나올수 있는 눈의합을 계산하는 문제 해결
+ 자바 배열을 사용하여 숫자를 n개 입력받아 뒤집은후 소수인지 판단하는 문제 해결
+ 소수인지 판단하는 메서드 로직 작성
+ [자바 API 정리내용](https://unique-wandflower-4cc.notion.site/09-API-e8c4b8dc80174e78aa32df71e23127d9)
+ [자자 ArrayList와 Random 클래스를 사용하여 문제풀이](https://unique-wandflower-4cc.notion.site/7945e956da9b40749cba2c89ce364449)
+ [배열을 사용하여 뒤집은 숫자에 대한 소수인지 판단](https://unique-wandflower-4cc.notion.site/6-9ff6e6d235c745079ef45f9d2e01604b)


### 배운점
+ 자바 Math.Random 클래스 사용 방법에 대한 이해
+ API 가 무엇인지에 대한 이해
+ ArrayList 와 배열의 차이점에 대한 이해
+ StringBuffer 객체와 reverse 메서드를 사용하여 데이터를 뒤집는 방법

### 개선할 점
+ 소수인지 판단할 때 더 효율적으로 판단할수 있는 방법이 있는지 고민 필요




# 01월 28일
## SQL
### 잘된점
+ SQL String관련 두문제 풀고 정리
+ [루시와 엘라 찾기](https://unique-wandflower-4cc.notion.site/e7fe592a482e405586ebe6a3e2033bc0)
+ [이름에 el이 들어가는 동물 찾기](https://unique-wandflower-4cc.notion.site/el-26878f2ccddb47febfe966c2b5a32f95)

### 배운점
+ LIKE 를 사용하면 문자열 패턴을 찾을 수 있다
+ IN 함수를 사용하면 OR 조건을 보다 간편하게 표현할 수 있다


## 자바
### 잘된점
+ 인터페이스의 사용목적과 사용방법에 대한 이해
+ 배열을 사용한 자바 알고리즘 3문제 해결
+ [등수 구하기](https://www.notion.so/8-738b66f84788440a82214930b7cff93d)
+ [격자판 최대합](https://www.notion.so/9-4af791e94aa34d16aa8f0be43d6c47e9)
+ [봉우리](https://www.notion.so/10-711683f941244928b751d02355d66b88)


### 배운점
+ [인터페이스의 역할과 사용방법](https://unique-wandflower-4cc.notion.site/ch11-5f35086f397b434397687b84f351d261)
+ [인터페이스와 다형성](https://unique-wandflower-4cc.notion.site/68548ec656c94466aa4ee6cfc1d11892)
+ [인터페이스에 올수 있는 메서드 종류](https://unique-wandflower-4cc.notion.site/53d9115b167243e1b31e210f0f3bad1c)

### 개선할점
+ 처음부터 잘할순 없다 꾸준히 하자!!


# 01월 29일
## 잘된점
+ 배열관련 알고리즘 2문제 풀기


# 01월 30일
## 잘된점
+ 자바 중복문자제거 알고리즘 문제 복습


# 01월 31일
## 자바
### 잘된점
+ 자바 예외처리 정리 및 문제 풀이

### 배운점
+ 예외의 종류와 예외를 던져서 처리하는 방법
+ [자바 예외처리](https://unique-wandflower-4cc.notion.site/ch12-1dfc823bac4c4ce6bebfc6101747b122)


## SQL

### 잘된점
+ 프로그래머스에서 String, Date관련 문제풀고 풀이 과정 정리
+ [중성화 여부 파악하기](https://unique-wandflower-4cc.notion.site/6545289f49504c83a0d0812ab1fc3106)
+ [오랜기간 보호한 동물(2)](https://unique-wandflower-4cc.notion.site/2-7338eb69d37d44d58c66e1398fb477a1)
+ [DATETIME에서 DATE로 형변환](https://unique-wandflower-4cc.notion.site/DATETIME-DATE-f1e560780c5a4a26bdc51dbf627debf2)



### 배운점
+ date_format 함수를 사용하여 날짜를 원하는 형식으로 변경하는 방법
+ CASE WHEN THEN 구문을 사용하여 컬럼 값에 따라 조건을 부여하는 방법



# 02월 01일

## spring
### 잘된점
+ web server 와 web application server 의 차이에 대한 이해 및 정리
+ 서블릿 동작과정에 대한 이해 및 정리

### 배운점
+ 웹 시스템을 구성할때 web과 was로 분리하는 이유와 분리했을때 장점
+ 서블릿이 응답을 받고 요청을 보내는 과정
+ [웹서버 vs WAS](https://unique-wandflower-4cc.notion.site/dd87f0858d084f4495ae0d70437d9ecf)
+ [서블릿 동작 과정](https://unique-wandflower-4cc.notion.site/3427a9c07bcb47b49c44ede6bfa1ed9b)

## SQL
### 배운점
+ DELETE 시 서브쿼리를 사용하는 방법
+ [DELETE_서브쿼리](https://unique-wandflower-4cc.notion.site/DELETE_-SUB-QUERY-846c407c07c0498abfb0923bc64dd70f)


## 자바
### 잘된점
+ 자바 파일입출력 정리 및 문제풀이
### 배운점
+ 파일입출력이란 무엇인가
+ 파일입출력에 사용되는 클래스와 클래스간 관계
+ [자바 파일 입출력 정리](https://unique-wandflower-4cc.notion.site/ch13-f6a2e9d4ce0a4d5bb23749acf5f2c69c)


## 자바 알고리즘
### 잘된점
+ 자바 문자열 관련 알고리즘 3문제 풀고 정리

### 배운점
+ charAt 메서드를 사용하여 특정 인덱스 위치의 문자를 반환받는다
+ indexOf 메서드를 사용하여 특정 문자가 가장 처음 나오는 인덱스를 반환받는다
+ [자바 특정문자 뒤집기](https://unique-wandflower-4cc.notion.site/5-cfe4be61ff3641df8af96c7ae0ee3b3a)
+ [자바 중복문자 제거](https://unique-wandflower-4cc.notion.site/6-fc19d0680c1e4ed0b1f2d544d5be662b)
+ [자바 회문문자열](https://unique-wandflower-4cc.notion.site/7-0f94585106d94fb88381280981fc7f19)



# 02월 02일

## SQL
### 잘된점
+ DELETE시 INNER JOIN을 활용한 문제 풀고 정리
+ [DETETE + JOIN 활용 문제풀이](https://unique-wandflower-4cc.notion.site/DELETE-INNER-JOIN-e82f774ec37940cea4788105d632dae4)
### 배운점
+ DELETE시 INNER JOIN을 활용하는 방법

## spring
### 잘된점
+ 쓰레드의 목적에 대한 이해
+ 데이터를 렌더링해주는 방법과 종류
+ 웹기술의 변천사에 대한 이해
+ [동시 요청 - 멀티 쓰레드](https://unique-wandflower-4cc.notion.site/03-67c654e6e3794fd28c2e6407e213a609)
+ [데이터를 렌더링 해주는 방법과 종류](https://unique-wandflower-4cc.notion.site/04-HTML-HTTP-API-CSR-SSR-44c16bad661c405fa13e5ad39980cbc8)
+ [자바 기반 웹 기술의 변천사](https://unique-wandflower-4cc.notion.site/05-cf14c5243de74285838d3da8115c7ff7)

### 배운점
+ 멀티 쓰레드를 사용해야 하는 이유
+ 요청이 들어올때 마다 쓰레드를 생성하는 것의 단점을 보완하기 위해 등장한 쓰레드 풀
+ 자바 웹 기술 역사
+ JAR vs WAR



## 자바 영화얘매 프로그램
### 잘된점
+ 프로그램 기능 정리
+ 프로그램 시작점과 프로그램 종료점의 구조파악
+ [영화 얘매 프로그램 기능 및 시작 메뉴 구성](https://unique-wandflower-4cc.notion.site/ch14-a50c66672f624eb2bc5f37b3cb4ff6f3)

## 자바 문자열 알고리즘
### 잘된점
+ 문자열 알고리즘 3문제 풀고 정리
+ [유효한 팰린드롬](https://unique-wandflower-4cc.notion.site/8-09339df4525147e2a248c5c92b3b66db)
+ [숫자만 추출](https://unique-wandflower-4cc.notion.site/9-cda967f603de43c2be4ad4072e59c362)
+ [가장 짧은 문자거리](https://unique-wandflower-4cc.notion.site/10-f47b3c4aa87345a1b167fdc67134c57a)
### 배운점
+ replaceAll 메서드에 정규표현식을 사용하여 특정 조건을 만족하는 경우 이를 대체 문자로 치환시킨다
+ Character 클래스의 isDigit 메서드를 사용하여 char 타입의 문자가 숫자인지 여부를 판단한다




# 02월 03일

## spring
### 잘된점
+ 서블릿 동작 흐름에 대한 이해
+ request , response 객체에 데이터가 담기는 방식에 대한 이해


### 배운점
+ [URL을 입력했을때 서블릿이 동작하는 흐름](https://unique-wandflower-4cc.notion.site/02-Hello-Servlet-968a9d211e23456eb3e9efc0990e2b2d)
+ [HTTPServletRequest 객체의 부가적인 기능과 객체를 사용하여 가져올수 있는 정보](https://unique-wandflower-4cc.notion.site/03-HttpServletRequest-5c2eb0a7c39b49b7af07d0e1ba18bf6e)
+ HTTP 요청 메시지 구조


## 자바스크립트
### 잘된점
+ 반응속도 테스트 게임 리펙토링 진행
+ [반응 속도 테스트 1차 리펙토링 진행 내용](https://unique-wandflower-4cc.notion.site/1-b3b363ac96aa4daab5d175ba4b74f1ed)

### 배운점
+ 배경색이 바뀌지 않았을때 성급하게 클릭하는것 막기
+ 사용자의 평균 반응시간 측정


### 개선할 점
+ 게임을 5회 이상 진행했을때 반응 시간을 내림차순으로 정렬하여 보여주는 기능 추가

## 자바 영화 얘매 콘솔 프로그램

### 잘된점
+ 영화 얘매 콘솔 프로그램 기능 추가
+ 파일에서 영화 목록을 읽어와 콘솔에 보여준다
+ 관리자 영역은 관리자 암호를 올바르게 입력한 사람만 볼수 있도록 구현
+ [영화 애매 콘솔 프로그램](https://unique-wandflower-4cc.notion.site/ch14-a50c66672f624eb2bc5f37b3cb4ff6f3)

### 배운점
+ 파일 객체를 사용하여 moveis.txt 파일을 읽어온다
+ BufferedReader 객체를 사용하여 파일의 데이터를 한줄씩 읽어온다

## 자바 알고리즘
### 잘된점
+ 문자열 관련 알고리즘 2문제 풀고 정리
+ 배열 관련 알고리즘 1문제 풀고 정리
+ [문자열 압축](https://unique-wandflower-4cc.notion.site/11-d29f8bf310a34bbfbc62f9b906d48e6b)
+ [암호](https://unique-wandflower-4cc.notion.site/12-bfa610840f1347959b9fa514edc9f782)
+ [큰 수 출력하기](https://unique-wandflower-4cc.notion.site/1-122326ae37994904a12bbb9b9575d695)

### 배운점
+ int 형 데이터를 String 타입의 문자열로 만들때 Stirng 클래스의 valueOf 메서드를 사용한다
+ 문자열의 특정 위치부터 특정 위치까지 자르는 경우 substring 메서드를 사용한다
+ 문자열에서 특정 문자를 특정 문자로 대체하고자 하는 경우 replace 메서드를 사용한다


# 02월 04일

## spring
### 잘된점
+ HTTP 요청 메시지를 통해 클라이언트에서 서버로 데이터를 전달하는 방법에 대해 정리

### 배운점
+ [GET - 쿼리파라미터](https://www.notion.so/HTTP-GET-6a605df364c542d98a2b6a499d4f7dc9)
+ [POST - HTML Form](https://www.notion.so/HTTP-POST-HTML-Form-389352c0183d4e6a90edd41b09b74899)
+ [API 메시지 바디 - 텍스트](https://www.notion.so/HTTP-API-b674f41d1bad4262a78a1fc777af72ac)
+ [API 메시지 바디 - JSON](https://www.notion.so/HTTP-API-JSON-42f50363d81b486fa11717ff04634fa8)
## 자바스크립트
### 잘된점
+ 반응속도 테스트 게임 2차 리펙토링 진행
+ [반응 속도 테스트 2차 리펙토링 진행 내용](https://unique-wandflower-4cc.notion.site/2-f7d0467f74d64a92b77e3a1032df371b)

## 배운점
+ 반응속도 측정을 5회 이상 진행하였을때
+ 5회동안 기록된 데이터를 오름차순으로 정렬하여 가장 빠른 기록부터 상위 5개만 화면에 보여준다

## SQL
### 잘된점
+ ERD 구조와 구성 요소에 대한 이해 및 정리

### 배운점
+ [ERD 구성 요소와 데이터 타입](https://unique-wandflower-4cc.notion.site/ERD-fe697911a8f04840905df3fdb9e778aa)

## 자바
### 잘된점
+ 영화 얘매 콘솔 프로그램 파일을 통해 영화 등록하는 기능 추가
+ 영화 얘매 콘솔 프로그램 파일을 통해 영화 삭제하는 기능 추가
+ [영화 얘매 콘솔 프로그램 작업 내용 정리](https://unique-wandflower-4cc.notion.site/ch14-a50c66672f624eb2bc5f37b3cb4ff6f3)

### 배운점
+ BufferedReader 객체를 사용하여 파일에서 데이터를 한줄씩 읽어온다
+ 한줄에서 ,(콤마)를 기준으로 split 메서드를 사용하여 문자열을 분리하여 배열에 담았다

## 자바 알고리즘
### 잘된점
+ 배열관련 알고리즘 3문제 풀고 정리

### 배운점
+ [보이는 학생 묹제 풀이과정](https://unique-wandflower-4cc.notion.site/2-b97baae12878433498ab200cffc17df1)
+ [가위 바위보 문제 풀이과정](https://unique-wandflower-4cc.notion.site/3-5178387af23d4209b0e860ac382943d6)
+ [피보나치 수열 문제 풀이과정](https://unique-wandflower-4cc.notion.site/4-7240dd4f6d284e60a8952ed9a31c4ff4)


# 02월 05일
## spring
### 잘된점
+ HTTP Response 객체를 통해 응답 데이터를 생성하는 방법에 대한 이해 및 정리

### 배운점
+ [HttpServletResponse 객체 사용하여 HTTP 응답 메시지 작성](https://unique-wandflower-4cc.notion.site/HttpServletResponse-2466239415c94b5f81733c1d9fd683c5)
+ [HTML로 응답하기](https://www.notion.so/HTTP-HTML-99130290316040d6ab0129686942186b)
+ [API JSON으로 응답하기](https://www.notion.so/HTTP-API-JSON-b073e7a61c4a48c580d6b2b9dff431f8)



## 자바스크립트
### 잘된점
+ 반응속도 테스트 3차 리펙토링 진행
+ [반응속도 테스트 3차 리펙토링 진행 과정](https://unique-wandflower-4cc.notion.site/3-c2566208c1ea4a0ab540d01c145aafc4)

### 배운점
+ 사용자가 5회 이상 시도했을때 상위 5개의 결과를 화면에 보여준다
+ 2차 리펙토링에서는 innerHTML을 사용했었는데
+ 3차 리펙토링에서는 append와 appendChild 메서드를 사용해 보았다
+ 상위 5개 요소가 들어갈 div 요소를 만든 후 그 안에 appendChild를 사용하여 각 데이터가 담긴 div 요소를 추가해 줬다
+ 또한 해당 데이터가 반응속도 상위 5위와 관련된 것임을 알려주기 위해 제목용 div를 만들고 append를 사용하여 제목 요소를 추가해 줬다

## 자바 알고리즘
### 잘된점
+ 배열관련 알고리즘 1문제 풀고 정리

### 배운점
+ 소수를 판단하기 위해 배수가 되는 숫자를 먼저 걸러낸다
+ [소수 찾기_에라토스테니스의 체 방식](https://unique-wandflower-4cc.notion.site/5-5f198572f1774ec1961e0dd021495793)


# 02월 07일
## 자바
## 자바 영와 얘매 프로그램
### 잘된점
+ 영화 얘매 확인 기능
+ 영화 얘매 취소 기능

### 배운점
+ [영화 얘매 프로그램 얘매 확인 및 얘매 취소 정리 내용](https://unique-wandflower-4cc.notion.site/ch14-a50c66672f624eb2bc5f37b3cb4ff6f3)
## spring
### 잘된점
+ servlet을 사용하여 회원관리 웹 애플리케이션 만들고 정리
+ jsp를 사용하여 회원관리 웹 애플리케이션 만들고 정리

### 배운점
+ [회원관리 Repository 테스트 케이스 작성](https://unique-wandflower-4cc.notion.site/b7a0e986f1a4476da028bf250668510c)
+ [servlet을 사용하여 회원관리 만든 과정 정리](https://unique-wandflower-4cc.notion.site/servlet-303763931d8f470e89bd7f94788638b0)
+ [jsp를 사용하여 회원관리 만든 과정 정리](https://unique-wandflower-4cc.notion.site/JSP-363ae7db26ec4c8ab69e1282231d0e45)
+ 자바 코드로 html을 만드는 것은 유지보수하기 매우 힘들다
+ 템플릿 엔진을 사용하면 html 문서에서 필요한 부분에만 코드를 적용하여 동적인 html을 만들수 있다
+ 템플릿 엔진에는 JSP , Thymeleaf , Freemarker , Velocity등이 있다

## 자바 영와 얘매 프로그램
### 잘된점
+ 영화 얘매 확인 기능
+ 영화 얘매 취소 기능

### 배운점
+ [영화 얘매 프로그램 얘매 확인 및 얘매 취소 정리 내용](https://unique-wandflower-4cc.notion.site/ch14-a50c66672f624eb2bc5f37b3cb4ff6f3)



# 02월 08일
## spring
### 잘된점
+ servlet에 MVC 패턴을 적용하여 회원관리 웹 애플리케이션 개발

### 배운점
+ MVC 패턴으로 분리했을떄 장점
+ Model View Controlle의 역할
+ 포워딩과 리다이렉트 차이
+ JSP에 el태그와 jstl을 사용하여 데이터를 바인딩 시키는 방법
+ [MVC 패턴 정리](https://unique-wandflower-4cc.notion.site/MVC-130e7ece5dc540868c09e4ade94f72e1)


## 자바 영화 얘매 콘솔 프로그램

### 잘된점
+ 영화 얘매 기능 구현

### 배운점
+ [영와 얘매 기능 구현 및 정리](https://unique-wandflower-4cc.notion.site/ch14-a50c66672f624eb2bc5f37b3cb4ff6f3)


## 자바 알고리즘
### 잘된점
+ 배열관련 알고리즘 2문제 풀고 정리

### 배운점
+ [뒤집은 소수 문제 풀고 정리](https://unique-wandflower-4cc.notion.site/6-68b7d17ac94d4790a1ed31f5c4ae8755)
+ [점수계산 문제 풀고 정리](https://unique-wandflower-4cc.notion.site/7-436dec9bd2064ef58a192f1a5f8c7fdd)
+ [문자열 압축](https://www.notion.so/34d04fe0d1d54b2eb6c59819e54f3b1c)
+ [암호](https://www.notion.so/8e247bef8d52403086fd13b3315278b3)


#### 문자열
1. 문자열 압축
  + 문자열에서 같은 문자가 연속으로 반복되는 경우 반복된느 문자 바로 오른쪽에 반복 횟수를 표시하는 방법으로 문자열을 압축한다
  + 반복문을 사용하여 같은 문자가 나오지 않을 때까지 검사한다
  + 같은 문자가 나온 경우 count를 1씩 증가시킨다
  + 같은 문자가 나오지 않은 경우 변수에 문자와 count 개수를 연결한다
2. 암호
  + 문자 개수의 7개 만큼의 # 과 * 로 구성된 암호를 해제하여 문자신호로 구분한다
  + substring 메서드를 사용하여 문자열을 특정 위치까지 자른다
  + replace 메서드를 사용하여 문자가 #인 경우 1로 , *인 경우 0으로 대체한다
  + parseInt 메서드를 사용하여 2진수를 10진수를 변환한다
  + 10진수를 char로 변환하여 문자로 만든다
  + 문자를 이어 붙인다


# 02월 09일
### 잘된점
+ 자바 문자열 관련 알고리즘 2문제 풀고 정리

### 배운내용
+ [숫자만 추출 문제 풀이 과정](https://unique-wandflower-4cc.notion.site/ce4d92318efd49998e4714f75b696ee9)
+ [가장 짧은 문자거리 문제 풀이 과정](https://unique-wandflower-4cc.notion.site/0f47bdf062c24142aba9460711fe5da2)


# 02월 10일
### 잘된점
+ 자바 배열 관련 알고리즘 2문제 풀고 정리

### 배운내용
+ [보이는 학생수 문제 풀이 과정](https://unique-wandflower-4cc.notion.site/b9cf2b330eda45db84da0c0a192357d3)
+ [큰수 출력하기 문제 풀이 과정](https://unique-wandflower-4cc.notion.site/e6c48a47b0a54715b8ce0e3067e766f7)


# 2월 11일
## 자바 배열 관련 알고리즘
### 잘된점
+ 배열관련 알고리즘 두문제 풀고 정리

### 배운내용
+ [소수의 개수](https://unique-wandflower-4cc.notion.site/c69c441e39c3438292d3b8795603eb48)
+ [뒤집은 소수](https://unique-wandflower-4cc.notion.site/9895cf8c6fd141c48889fbba922a2137)

## spring 블로그 프로젝트
### 잘된점
+ 프로젝트 환경설정 작업 진행

### 배운점
+ spring boot를 인텔리제이에서 프로젝트 생성할때 jsp를 지원하지 않으므로 타임리프나 mustache 템플릿을 사용해야 한다
+ 테스트할때 jsp로 레이아웃을 만들고 application.yml에 jsp 관련 설정을 추가했는데도
화면이 404가 떠서 원인을 찾는데 시간이 걸렸다
+ 구글링을 했더니 spring boot 프로젝트 생성시 인텔리제이에서는 jsp를 지원하지 않는다고 한다
+ 따라서 템플릿으로 mustache와 타임리프를 활용하기로 했다


# 02월 12일
## 10000hr 클론코딩
### 잘된점
+ html을 사용하여 레이아웃 설계

### 배운점
+ 특정 영역을 감쌀때 section 태그를 사용한다
+ [10000hr - html 레이아웃 설계](https://unique-wandflower-4cc.notion.site/10000hr-a23a8209be1f44159c521798dbbce599)


## 자바 배열관련 알고리즘
### 잘된점
+ 배열관련 알고리즘 한문제 풀고 정리

### 배운점
+ [배열 알고리즘 - 점수계산 풀이과정](https://unique-wandflower-4cc.notion.site/536f03e341f54b398551b23820e7de1b)




# 2월 14일
##자바 알고리즘
### 잘된점
+ 배열관련 알고리즘 문제 풀고 회고

### 배운점
+ [자바 배열 가위바위보 문제풀이 과정 정리](https://unique-wandflower-4cc.notion.site/526e18f2dc714a98af91fd03c201128a)
- A가 낸 패를 담을 배열을 선언한다
- B가 낸 패를 담을 배열을 선언한다
- A가 낸 패와 B가 낸 패를 비교하여 이겼을때 졌을때 비겼을때를 판별한다

# 2월 15일
## 자바 배열관련 알고리즘
### 잘된점
+ 배열관련 알고리즘 문제 풀고 회고

### 배운점
+ [격자판 최대합 문제풀이 과정 정리](https://unique-wandflower-4cc.notion.site/9-4af791e94aa34d16aa8f0be43d6c47e9)


# 2월 16일
## 자바 배열관련 알고리즘
### 잘된점
+ 배열관련 알고리즘 문제 풀고 회고

### 배운점
+ [봉우리 문제풀이 과정 정리](https://unique-wandflower-4cc.notion.site/0079fe14a29040eebe28fe0cdef30017)

## spring
### 잘된점
+ FrontController 패턴에 대한 이해 및 정리

### 배운점
+ [FrontController 정리 내용](https://unique-wandflower-4cc.notion.site/1cfb6dbf9be84d98bc88b59d852657f3)


# 2월 17일
## 백준 - 브루트포스 알고리즘 - 블랙잭
### 잘된점
+ 브루트포스 알고리즘 블랙잭 문제 풀고 정리 

### 배운점
+ [블랜잭 문제풀이 과정 정리](https://unique-wandflower-4cc.notion.site/b419db9ef66748a3a2bea03c17fddbed)


# 2월 18일

## 백준 - 브루트포스 알고리즘 - 덩치
### 잘된점
+ 브루트포스 알고리즘 덩치 문제 풀고 정리

### 배운점
+ [덩치 문제풀이 과정 정리](https://unique-wandflower-4cc.notion.site/fe09e056485049adb8e14a6fda8ea721)


# 2월 19일
## 백준 - 브루트포스 알고리즘 - 영화감독숌
### 배운점
+ [영화감독숌 문제풀이 과정 정리](https://unique-wandflower-4cc.notion.site/f76bbcdf5c4b4feebf00fc3a565fd8a8)


### 개선할 점
+ 구글링해서 다른 사람 코드를 참고했다 
+ 왜 이런방식으로 풀어야 하는지 더 고민 필요

+ 흠..
+ 666을 포함하고 있는 문자열이여야 한다
+ 그런데 N번째로 작아야 한다
+ 따라서 카운팅할 변수를 선언한다 (cnt)
+ 반복문을 돌면서 cnt가 N과 같지 않은지 검사한다
+ + 같지 않으면 N이 666을 포함하고 있는지 검사한다
 + + 포함하면 cnt를 1씩 증가시킨다
  + + 근데 N은 왜 증가시켜야 하는가?...



  # 02월 20일

## 백준 배열 알고리즘
  ### 잘된점
  + 백준 배열 관련 알고리즘 2문제 풀정 정리

  ### 배운점
+ [백준 최소,최대 풀이과정 정리 및 회고](https://unique-wandflower-4cc.notion.site/_-7aa755e505804299a82b3aca0e1d24ed)
+ [백준_최댓값 풀이과정 정리 및 회고](https://unique-wandflower-4cc.notion.site/_-_-f01a915fabb64e09914f59bcf37d02de)


## spring - FrontController 실습
### 잘된점
+ spring 프론트컨트롤러 도입 배경과 특징에 대한 이해
+ 기존 servlet 코드를 프론트컨트롤러 패턴을 사용하여 리펙토링 진행

### 배운점
+ [프론트컨트롤러 도입 배경과 특징](https://unique-wandflower-4cc.notion.site/1cfb6dbf9be84d98bc88b59d852657f3)
+ [servlet을 프론트컨트롤러 패턴을 사용하여 리펙토링](https://unique-wandflower-4cc.notion.site/v1-1739b92d64a842a4a5da19e813331d5e)


# 02월 21일
## spring - FrontController를 사용하여 view 분리
### 잘된점
+ view를 분리해야 하는 이유 와 장점

### 배운점
+ [프론트컨트롤러 패턴을 사용하여 view를 분리하는 과정 정리](https://unique-wandflower-4cc.notion.site/VIEW-aadfcc80c4a340be990aaca455362323)


## 백준 - 정렬알고리즘 - 수정렬하기
### 잘된점
+ 정렬알고리즘 한문제 풀고 정리

### 배운점
+ [정렬 - 수정렬하기 풀이과정](https://unique-wandflower-4cc.notion.site/1d74ffbd838c42bd81a732eaabb1c406)


# 2월 22일
## 알고리즘
### 잘된점
+ 백준 정렬 알고리즘 관련 문제 풀고 정리
+ 백준 배열 관련 문제 풀고 정리

### 배운점
+ [수정렬하기2 풀이과정](https://www.notion.so/2-3db098ff2e8244e6be1f868aed523d4b)
+ [숫자의개수 풀이과정](https://unique-wandflower-4cc.notion.site/_-dbf95db5ea64451babc324d6fc67d9b6)

 ## 자바스크립트
 ### 잘된점
 + 틱택토 게임 레이아웃 설계

 ### 배운점
 + [틱택토 게임 레이아웃 설계과정 정리](https://unique-wandflower-4cc.notion.site/265fab00e45548b28b51e9f676db72ac)


 # 02월 23일
 ## 백준 알고리즘
 ### 잘된점
 + 정렬알고리즘 - 수정렬하기3 문제풀이

 ### 배운점
 + [수정렬하기3 해결과정 정리](https://unique-wandflower-4cc.notion.site/3-5efd609e40d1445b815dd2b1b3938be6)



 # 02월 24일
 ## 밋코더 발표 준비
 ### 잘된점
 + spring 서블릿 관련 발표자료 준비

 ### 배운점
 + [sertvlet 정의와 servlet 생명주기](https://unique-wandflower-4cc.notion.site/servlet-367c4cbbc02d46b486d9a1f9cf08bd6f)
## 백준 알고리즘 배열
### 잘된점
+ 백준 배열 고나련 알고리즘 한문제 풀고 정리
### 배운점
+  [나머지 풀이과정](https://unique-wandflower-4cc.notion.site/_-7251a54093fa4f199b72e4e206082714)

## 자바 알고리즘 배열 강의
### 잘된점
+ 배열 관련 알고리즘 한문제 풀고 정리
### 배운점
+ [임시반장 정하기 풀이과정](https://unique-wandflower-4cc.notion.site/11-ee610f4d0a98468f991122f65a35bfbc)


# 2월 25일
## MeetCode 블로그 스터디
### 잘된점
+ spring 발표자료 리뷰받은 내용 기준으로 수정

### 배운점
+ [리뷰받은 내용](https://github.com/Meet-Coder-Study/posting-review/pull/936)
+ [servlet 객체와 생명주기](https://unique-wandflower-4cc.notion.site/servlet-367c4cbbc02d46b486d9a1f9cf08bd6f)

## 백준 알고리즘
### 잘된점
+ 브루트포스 개념정리
+ 정렬관련 알고리즘 한문제 풀고 정리

### 배운점
+ [브루트포스 알고리즘 개념 정리](https://unique-wandflower-4cc.notion.site/c250349238c14534b1615b5de838c72e)
+ [소트인사이드 풀이과정](https://unique-wandflower-4cc.notion.site/_-e0e9ba4d3da44d63b13f98e87e595091)



## spring - FrontControllerServlet view 렌더링 코드 분리
### 잘된점
+ FrontControllerServlet에서 view 렌더링 처리
+ 컨트롤러에서는 view 페이지 경로만 생성하여 반환
+ 모델을 사용하여 컨트롤러에서 서블릿 의존성 제거
+ FrontControllerServlet에서 view 포워딩 코드 중복 제거

### 배운점
+ [프론트컨트롤러서블릿 view 렌더링 코드 분리](https://unique-wandflower-4cc.notion.site/VIEW-aadfcc80c4a340be990aaca455362323)
+ [모델을 통한 서블릿 의존성 제거 및 뷰 포워딩 코드 중복 제거](https://unique-wandflower-4cc.notion.site/Model-V3-de6d205739474fb4967ff62b9f73c5b8)



# 02월 26일
## 밋 코더 발표
### 잘된점
+ spring servlet 객체의 정의와 생명주기 관련 발표
+ 발표자료에 이미지 추가

### 배운점
+ [서블릿 객체의 정의와 생명주기](https://unique-wandflower-4cc.notion.site/servlet-367c4cbbc02d46b486d9a1f9cf08bd6f)

 ## 알고리즘
 ### 잘된점
 + 백준 배열 관련 알고리즘 한문제 풀고 정리

 ### 배운점
 + [평균 풀이과정](https://unique-wandflower-4cc.notion.site/_-c14a52a0536045ef86feab4cccb04410)

## spring
### 잘된점
+ V1 - FrontController HandlerMapping 
     - 컨트롤러에서 뷰 페이지로 포워딩
+ V2 - 컨트롤러는 뷰 경로만 반환
     -  프론트 컨트롤러에서 뷰 페이지로 포워딩
+ V3 - 컨트롤러의 서블릿 종속성 제거
     - 컨트롤러는 ModelView 객체에 뷰 이름과 데이터만 담아 반환
     - 프론트 컨트롤러에서 ViewResolver가 물리적 뷰 경로 생성 
     - request 객체에 ModelView 객체에 들어있는 데이터를 담아 뷰페이지로 포워딩
    
### 배운점
+ [v1 정리내용](https://unique-wandflower-4cc.notion.site/1cfb6dbf9be84d98bc88b59d852657f3)
+ [v2 정리내용](https://unique-wandflower-4cc.notion.site/VIEW-V2-aadfcc80c4a340be990aaca455362323)
+ [v3 정리내용](https://unique-wandflower-4cc.notion.site/Model-V3-de6d205739474fb4967ff62b9f73c5b8)



# 02월 27일
## servlet 부터 spring 프레임워크까지 직접 만들기
### 잘된점
+ V4 - FrontController 에서 ModelView 객체를 만들어 Controller에게 전달한다
     - Controller는 더이상 ModelView 객체를 반환하지 않는다
     - ViewName만 반환한다
  
### 배운점
+ [v4 정리내용](https://unique-wandflower-4cc.notion.site/V4-b67cc0ff03224be898d2ad1fe968a8b6)

## 백준 알고리즘 배열
### 잘된점
+ 배열관련 알고리즘 한문제 풀고 정리
### 배운점
+ [OX퀴즈 풀이과정](https://unique-wandflower-4cc.notion.site/_OX-b5bb270b44e142ce9e86b3d130d63e0b)


# 02월 28일
## spring
### 잘된점
+ FrontController 대신 핸들러 어댑터가 컨트롤러를 호출할 수 있도록 변경

### 배운점
+ [프론트 컨트롤러에 핸들러 어댑터 적용](https://unique-wandflower-4cc.notion.site/1-V5-d24a208d4e3f4ab798e7adcd66134b05)

## 자바 알고리즘
### 배운점
+ 프로그래머스 피로도 문제 진행중


# 03월 01일
## FrontController에 핸들러 매핑과 핸들러 어댑터 적용
### 잘된점
+ FrontController에 어댑터가 필요한 이유
  + 다양한 종류의 컨트롤러를 호출할 수 있게 하기 위함
  + 다양한 형태의 핸들러가 생길수 있고 이메 맞는 핸들러 어댑터를 구현해 놨다
  + 개발자는 원하는 형태로 컨트롤러를 정의하여 개발할 수 있다

### 배운점
+ [프론트 컨트롤러에 핸들어 매핑과 핸들러 어댑터 적용과정 정리](https://unique-wandflower-4cc.notion.site/V5-d24a208d4e3f4ab798e7adcd66134b05)
+ [mvc 프레임워크 만드는 과정 V1 ~ V5 까지 정리](https://unique-wandflower-4cc.notion.site/V5-d24a208d4e3f4ab798e7adcd66134b05)

## 자바 알고리즘
### 잘된점
+ 백트레킹 스타트와 링크 문제 푸는중



# 03월 03일
## html
### 잘된점
+ include 사용하여 html 동적으로 로드하는 방법 실습
### 배운점
+ [include 사용하여 html 동적으로 로드시키는 방법](https://unique-wandflower-4cc.notion.site/html-f0751f7fc493428682722efb45acb80e)

## spring
### 잘된점
+ spring mvc 전체 구조 정리
+ 핸들러 매핑과 핸들러 어댑터 개념 정리 및 실습
+ 뷰 리졸버의 역할과 개념 정리 및 실습

### 배운점
+ [spring mvc 전체 구조](https://unique-wandflower-4cc.notion.site/MVC-f8358340bb7e4edaaa561ff206d1351d)
+ [핸들러 매핑과 핸들러 어댑터](https://unique-wandflower-4cc.notion.site/66b9dd9f4eb0486c82ab5dcb4e28b260)
+ [뷰 리졸버](https://unique-wandflower-4cc.notion.site/011642fead53484da05503c701b1f330)
+ [spring mvc 컨트롤러로 변경 V1](https://unique-wandflower-4cc.notion.site/MVC-V1-f21adc58f03e4cf29142b75a0f69c815)
+ [spring mvc 컨트롤러 통합 V2](https://unique-wandflower-4cc.notion.site/MVC-V3-a1438c8a77464e7695bc74019021e771)
+ [spring mvc 컨트롤러 실용적인 방식으로 변경 V3](https://unique-wandflower-4cc.notion.site/MVC-V3-a1438c8a77464e7695bc74019021e771)

## 자바 알고리즘
### 잘된점
+ 백준 문자열 아스키코드 문제 풀고 정리
### 배운점
+ [백준_아스키코드 풀이과정](https://unique-wandflower-4cc.notion.site/_-35186204742a4b58a46f2b4d0a6c069e)




# 03월 07일
## 자바 알고리즘
### 잘된점
+ 문자열 대소문자 변환 문제 풀고 정리
+ 백준 숫자의 합 문제 다른 방법으로 풀이

### 배운점
+ [문자열 대소문자 변환](https://unique-wandflower-4cc.notion.site/9ec81f7196cf4bbebd347d8fe83528e2)
+ [백준_숫자의합](https://unique-wandflower-4cc.notion.site/cb12561bfc0946639e5728017ce73dea)

## 기술 면접 발표 자료
### 잘된점
+ REST AND RESTFUL 관련 발표자료 준비
+ REST 구성 요소
+ RESTFUL API 특징
+ RESTFUL API를 설계하기 위해 지켜야 하는 원칙
### 배운점
+ [REST AND RESTFUL](https://unique-wandflower-4cc.notion.site/Rest-AND-Restful-e95cc455b4c34ef58120c6c5dea3775b)

## spring
### 잘된점
+ HTTP 요청 파라미터 관련 내용 실습 

### 배운점
## HTTP 요청 파라미터 관련 내용 실습
### 배운점
## HTTP 요청 파라미터 관련 내용 실습
### 배운점
+ [요청 매핑](https://unique-wandflower-4cc.notion.site/a049acd58d674185b3e1bb291f47f2b9)
+ [회원관리 요청매핑 API](https://unique-wandflower-4cc.notion.site/API-5f088d407b34405ba05850c402738774)
+ [HTTP 요청 - 헤더 조회](https://unique-wandflower-4cc.notion.site/HTTP-5ccda026b62f4e208d70617767d1cb47)
+ [@RequestParam](https://unique-wandflower-4cc.notion.site/HTTP-RequestParam-115b0e3598614d328f527e2270932712)
+ [@ModelAttribute](https://unique-wandflower-4cc.notion.site/HTTP-ModelAttribute-97bf6bb1b60942fe9ef76cda95487b1d)



# 03월 08일
## 자바 알고리즘
### 잘된점
+ 문자열 관련 문장 속 단어 찾기 문제 풀고 정리
+ 프로그래머스 정수 내림차순으로 배치하기 문제 풀고 정리

### 배운점
+ [문장 속 단어](https://unique-wandflower-4cc.notion.site/ebff02a3cc6d44f6ad3ed173b1c340dd)
+ [프로그래머스 정수 내림차순으로 배치하기](https://unique-wandflower-4cc.notion.site/_-9c88616a3e5645c7a8920c5d7f4674fc)

## 기술면접 스터디
### 잘된점
+ REST AND RESTFUL 내용 보충
+ RestFul 무상태성 관련 내용 추가
+ REST API 통신시 반환해주는 HTTP 상태코드와 의미

### 배운점
+ [Rest AND RESTFUL 내용 수정](https://unique-wandflower-4cc.notion.site/Rest-AND-Restful-e95cc455b4c34ef58120c6c5dea3775b)

## spring
### 잘된점
+ JSON 형식으로 HTTP 요청 메시지 보내기
+ HTTP 사용시 메시지 바디에 직접 데이터를 담아 응답해주는 방법
### 배운점
+ [HTTP 요청 메시지 - JSON](https://unique-wandflower-4cc.notion.site/HTTP-JSON-ba8baaeab9cd4ee79ecf799c39a62605)
+ [뷰 템플릿 응답](https://unique-wandflower-4cc.notion.site/6e7d399f1f83402aa8f751527b534557)
+ [HTTP 응답 - 메시지 바디에 직접 입력](https://unique-wandflower-4cc.notion.site/HTTP-4daf9f78dd5d40a9be2e697610aef51b)



# 03월 09일
## spring
### 잘된점
+ http 메시시 컨버터 정의 및 종류
+ 메시지 컨버터를 통해 데이터를 읽고 쓰는 방법에 대해 정리

### 배운점
+ [HTTP 메시지 컨버터](https://unique-wandflower-4cc.notion.site/HTTP-b8c12daf987a43ab858ca574eaa0d4ab)
## 자바 알고리즘
### 잘된점
+ 문자열 관련 단어뒤집기 문제 풀고 정리
### 배운점
+ [단어 뒤집기](https://unique-wandflower-4cc.notion.site/d40ac1b645f44cc6838f25b452754155)


# 03월 10일
## spring
### 잘된점
+ HTTP 메시지 컨버터 와 요청매핑 핸들러 어댑터 관계 정리

### 배운점
+ [요청 매핑 핸들러 어댑터](https://unique-wandflower-4cc.notion.site/781ea2bcb7f948c5b011c0d1d6a787e0)

## 자바 알고리즘
### 잘된점
+ 문자열 관련 두문제 폴고 정리
### 배운점
+ [특정 문자 뒤집기](https://unique-wandflower-4cc.notion.site/bf710d0ee1344f21a7a7d1ab1a329c3d)
+ [중복 문자 제거](https://unique-wandflower-4cc.notion.site/8ee4e282296440bc97170ece6ed98b95)

## 블로그 프로젝트
### 잘된점
+ 테이블 구조도 설계
### 배운점
+ [블로그 프로젝트 테이블 구조도 틀 설계](https://unique-wandflower-4cc.notion.site/52b599fe286a4a3c85d3bad7764a4b71)

## 블로그 포스팅 스터디
### 잘된점
+ 4주차 REST and RESTFUL 관련 글 업로드
### 배운점
+ [REST and RESTFUL](https://unique-wandflower-4cc.notion.site/4-REST-and-RESTFUL-9430984ad1d041b7b6ed016424fdaad0)



# 03월 11일
## 자바 알고리즘
### 잘된점
+ 문자열 관련 두문제 풀고 정리
+ replace 와 replaceAll 차이점 정리 및 실습

### 배운점
+ [회문 문자열](https://unique-wandflower-4cc.notion.site/9ecb494290d941dab357b480398e9e17)
+ [유효한 팰린드롬](https://unique-wandflower-4cc.notion.site/a69802907f6d4cbdad0f40a909aa6a0f)

## spring mvc1편
### 잘된점
+ spring mvc 기반 아이템 관리 프로젝트 생성 및 환경설정 진행
+ 섹션1 ~ 섹션3 발표자료 정리 및 요약

### 배운점
+ [타임리프 환경설정 에러 해결과정](https://unique-wandflower-4cc.notion.site/spring-boot-Thymeleaf-1e682c67a4e74cf9b0b0cc8cb26712e8)
+ [센션1 ~ 섹션3 발표자료 정리](https://unique-wandflower-4cc.notion.site/mvc1-1-3-86a874509bec4ef091ea5590ef6f7615)

## 블로그 프로젝트
### 잘된점
+ 테이블 설계도 바탕으로 실제 테이블 생성 작업 진행 중
### 배운점
+ [블로그 프로젝트 테이블 설계도](https://unique-wandflower-4cc.notion.site/52b599fe286a4a3c85d3bad7764a4b71)
+ [블로그 프로젝트 테이블 설계 코드](https://unique-wandflower-4cc.notion.site/9e229794f2154a81b08313fb31e232b4)


# 03월 14일
# 자바스크립트
## 스코프
### 잘된점
+ 스코프 관련 개념정리

### 배운점
+ [스코프](https://unique-wandflower-4cc.notion.site/13-7f1ab52dbf0949e683a8960014541e98)

# 03월 15일
## spring
### 잘된점
+ spring mvc1편 섹션1 ~ 섹션3까지 발표 진행
+ [spring mvc1편 섹션1 ~ 섹션3 발표 자료](https://unique-wandflower-4cc.notion.site/mvc1-1-3-86a874509bec4ef091ea5590ef6f7615)
### 배운점
+ @RequiredArgsConstructor
+ 생성자를 통해 객체를 주입해주는 것을 자동으로 처리 해주는 어노테이션
+ final 키워드가 붙은 멤버변수를 생성자 파라미터로 알아서 주입해준다

+ @ServletComponentScan
+ 서블릿 컴포넌트를 스캔할 때 사용하는 어노테이션
+ @WebFilter , @WebServlet ,@WebListener 어노테이션이 붙은 클래스를 자동으로 스캔해 객체로 만들어 준다

## DDD
### 잘된점
+ 챕터1 도메인 모델 시작 정리
+ [챕터1 도메인 모델 시작](https://unique-wandflower-4cc.notion.site/984e2febd52a43eca9533d889ebb3f8f)

### 배운점
+ 도메인 이란
+ 도메인 모델 패턴과 아키텍쳐 구조
+ 엔티티와 밸류
+ 도메인 모델에 set 메서드를 넣어면 안되는 이유
+ 도메인 객체를 불변 객체로 만드는 방법

# 3월 16일
## 자바 알고리즘
### 잘된점
+ 숫자만 추출 문제를 다른 방식으로 풀고 정리
+ replaceFirst 메서드를 사용하여 문자열에서 첫번째 0을 제거
### 배운점
+ [숫자만추출 다른 방식으로 풀어보기](https://unique-wandflower-4cc.notion.site/ce4d92318efd49998e4714f75b696ee9)

## 기술면점 대비 HTTP 공부 및 정리
### 배운점
+ [웹소켓](https://unique-wandflower-4cc.notion.site/21a3aa5e4910477d9da1613d1c250bf8)
+ [CORS](https://unique-wandflower-4cc.notion.site/CORS-b839525e524c4891a22405ba13f98bc4)
+ [OAuth](https://unique-wandflower-4cc.notion.site/OAUth-7c63c545a17142418f3d3221c024eeab)


# 3월 17일
## spring 스터디
### 잘된점
+ servlet에서 부터 spring 프레임워크 만드는 과정 정리
+ spring mvc 전체 구조 
+ - DispatcherServlet의 목적
+ - RequestDispatcher 가 필요한 이유

### 배운점
+ [spring mvc1 섹션4 ~ 섹션5 정리](https://unique-wandflower-4cc.notion.site/4-5-ddd121b6072b4ae2af98237a8ebe8f8a)

## ddd
### 잘된점
+ chapter2 아케텍쳐 구조 정리
+ 네가지 영역과 역할
+ 계층 구조 아키텍쳐

### 배운점
+ [아키텍처 개요](https://unique-wandflower-4cc.notion.site/36b3135f19d74fb1a2fbd55ee2848c1d)

## 기술면접 대비 스터디
### 잘된점
+ 운영체제 메모리 구조
+ 스택 동작 과정
+ 스택 영역 특징
+ 힙 영역 특징

### 배운점
+ [운영체제 메모리 구조](https://unique-wandflower-4cc.notion.site/b77a2f747b06439cbf55d90a9bee9d2e)

# 03월 18일
## DDD
### 잘된점
+ DIP의 목적
+ DIP 방식으로 설계하는 방법

### 배운점
+ [아키텍처개요 - DIP](https://unique-wandflower-4cc.notion.site/36b3135f19d74fb1a2fbd55ee2848c1d)

### 잘된점
+ 문자열 관련 한문제 풀고 정리
### 배운점
+ [가장 짧은 문자 거리](https://unique-wandflower-4cc.notion.site/3e6736dececb415b84e54ec91db36d86)

# 03월 20일
## 기술면접 스터디
### 잘된점
+ 운영체제 메모리 구조 발표 및 피드백 진행
+ 다른 사람 발표 주제에 대해 미리 정리
+ [캐시의 지역성](https://unique-wandflower-4cc.notion.site/9afc9a8b4e0747e38ef6892422b53dfa)
+ [교착상태와 기아상태](https://unique-wandflower-4cc.notion.site/185c69b6b1a74b3bbf2c5f0ea8b21119)
### 배운점
+ [운영체제 메모리 구조](https://unique-wandflower-4cc.notion.site/b77a2f747b06439cbf55d90a9bee9d2e)

## DDD
### 잘된점
+ 도메인 영역의 구성 요소와 역할 정리
### 배운점
+ [도메인 영역 구성 요소](https://unique-wandflower-4cc.notion.site/1fc2bb4ac9e548f28bad0b338cc79892)


# 03월 21일
## DDD
### 잘된점
+ 표현영역 , 응용영역 , 인프라스턱처 영역간 요청처리 흐름에 대한 이해
+ 인프라스트럭처 영역의 역할
+ 아키텍처에 맞는 패키지 모듈 구성방법

### 배운점
+ [요청처리 흐름](https://unique-wandflower-4cc.notion.site/cdca3ff502174cf08ee268030b6bf728)
+ [인프라스트럭처 영역의 역할](https://unique-wandflower-4cc.notion.site/f2717298304f4163a02520a876b8d04b)
+ [패키지 모듈 구성방법](https://unique-wandflower-4cc.notion.site/b147cb41ecd94a918b763f6fae32588d)

## 오브젝트
### 잘된점
+ 티켓판매 애플리케이션 가장 시나리오 설계
+ 클래스 기반 구조도 설계

### 배운점
+ [티켓 판매 애플리케이션 클래스 설계](https://unique-wandflower-4cc.notion.site/01_1-ace7774eb70d4750b75422b5843947d7)

## 기술면접 스터디 - 운영체제
### 잘된점
+ 운영체제 메모리 구성요소 피드백 기반 자료 수정

### 배운점
+ [운영체제 메모리 구성요소](https://unique-wandflower-4cc.notion.site/b77a2f747b06439cbf55d90a9bee9d2e)


# 03월 22일
## 오브젝트
### 잘된점
+ 클래스간 의존도가 높은 설계의 문제점
+ 변경에 취약하다
+ 세부적인 내용들을 기억하고 있어야 한다
+ 두 객체 사이의 결합도가 높으면 코드를 변경하기 어려워 진다

### 배운점
+ [티켓 애플리케이션 무엇이 문제인가](https://unique-wandflower-4cc.notion.site/02-ed75306865e84c49aceb9a20cac5b22e)

## DDD - 애그리거트
### 잘된점
+ 애그리거트가 필요한 이유
+ 도메인 객체 모델이 복잡해 지면 개별 구성요소 위주로 모델을 이해하게 되고 전반적인 구조나 큰 수준에서 도메인 간의 관계를 파악하기 어려워 진다
+ 상위 수준에서 모델이 어떻게 역여 있는지 알아야 전체 모델을 망가뜨리지 않으면서 추가 요구사항을 모델에 반영할 수 있다

+ 애그리거트 특징
1. 애그리거트에 속한 객체는 동일한 라이프사이클을 갖는다
2. 애그리거트는 경계를 갖는다
3. 도메인 규칙에 따라 함께 생성되는 구성요소는 한 애그리거트에 속할 가능성이 높다

### 배운점
+ [애그리거트](https://unique-wandflower-4cc.notion.site/4cdba97338364d7cb2ee5c96c4c2a8a6)

## spring mvc1 섹션4 ~ 섹션5 발표자료 정리
### 잘된점
+ servlet코드에서 직접 spring mvc 만들기
1. 프론트 컨트롤러 도입
2. 뷰 분리
3. 서블릿 종속성 제거
4. ViewResolver 사용
5. 컨트롤러에 핸들러 어댑터 패턴 적용

+ spring mvc가 제공하는 어노테이션을 사용하여 spring mvc 만들기
1. - @Controller 어노테이션이 붙은 클래스는 spring 컨테이너가 빈으로 등록해준다
- @RequestMapping이 URL을 보고 매핑된 컨트롤러를 찾을 수 있도록 도와준다


+ 추가적으로 알게된점
+ 핸들러 어댑터는 핸들러 매핑을 통해 찾은 컨트롤러를 직접 실행해 준다
+ 핸들러 매핑 : HTTP 요청 정보를 사용하여 요청을 처리할 컨트롤러를 찾아준다
+ RequestDispatcher : request 객체가 담고 있는 데이터를 다음 페이지에서도 볼수있게 포워딩
2. + spring이 제공하는 ModelAndView  객체를 사용

  + setViewName 메서드를 통해 반환해줄 뷰의 경로를 설정

  + addObject 메서드를 통해 포워딩 시켜줄 데이터를 넣어준다

3. 컨트롤러의 각 메서드가 논리 뷰 이름을 반환한다
4. Model 객체에 포워딩 시켜줄 데이터를 담아 뷰 페이지로 포워딩 시킨다



# 03월 23일
## DDD - 애그리거트 루트 와 트랜잭션
### 잘된점
+ 애그리거트 루트가 필요한 이유
+ 트랜잭션에서 객체를 두개이상 변경해야 하는 경우 서비스단에서 작업

### 배운점
+ [애그리거트 루트와 트랜잭션](https://unique-wandflower-4cc.notion.site/5fb6c05d2837497b953a66a56618a710)

## 오브젝트 - 캡슐화
### 잘된점
+ 객체간 의존성이 높은 코드의 문제점
+ 캡슐화를 통해 객체 내부 로직을 숨긴다
+ 왜부에서 객체 내부에 직접 접근할 수 없게 한다

### 배운점
+ [티켓 애플리케이션 설계 개선하기](https://unique-wandflower-4cc.notion.site/03-051818a439fa47a3bcf50b2cd804fb7e)

## spring - 로깅
### 잘된점
+ 로그를 남겨야 하는 이유
+ 로그 레벨
+ 로그 레벨 설정 방법

### 배운점
+ [로깅](https://unique-wandflower-4cc.notion.site/6-7-b87465a37c4648f9934db14002772055)

## 자바 알고리즘
### 잘된점 
+ 배열 관련 한문제 풀고 정리
### 배운점
+ [큰 수 출력하기](https://unique-wandflower-4cc.notion.site/c9d23243d1034b22b394955ed70bb2d0)


# 03월 24일
## DDD
### 잘된점
+ 리파지터리와 애그리거트
+ 애그리거트를 ID로 참조하면 안되는 이유
+ 애그리거트와 애그리거트 루트 관계 정리

### 배운점
+ [리파지터리와 애그리거트](https://unique-wandflower-4cc.notion.site/16524da647844ec080ed603df48e71f7)

## 오브젝트 
## 잘된점
+ 티켓 애플리케이션 구조 개선
+ TicketSeller와 TicketOffice 의존성 제거
+ Audience 와 Bag 의존성 제거
+ 객체지향 프로그래밍과 절차지향 프로그래밍 차이

### 배운점
+ [설계 개선하기_2](https://www.notion.so/_2-57a311e3e3384febb45441098707e382)
+ [설계 개선하기_3]https://www.notion.so/_3-c40d4a2fd9be4131b1fa4c470bce2c44)

## 자바 알고리즘
### 잘된점
+ 두 배열의 공통원소구하기 문제 풀고 정리
### 배운점
+ [공통 원소 구히기](https://unique-wandflower-4cc.notion.site/5095c4a556a34617a7f063df7e017a1b)

## spring
### 잘된점
+ 요청 매핑관련 어노테이셔내
+ 요청 매핑 HTTP 메서드
+ 컴포넌트 스캔 - @Component
+ 회원관리 예제 요청 매핑 실습

### 배운점
+ [spring 요청 매핑](https://unique-wandflower-4cc.notion.site/6-7-b87465a37c4648f9934db14002772055)


# 03월 25일
## spring 
### 잘된점
+ 어노테이션을 사용하여 HTTP 헤더 정보를 가져오는 방법
+ @RequestParam 사용법
+ @RequestParam에 적용할 수 있는 속성 - requirec , defalutValue
+ @RequestParam - 파라미터를 Map과 MultiValueMap으로 받는 방법
### 배운점
+ [spring HTTP 헤더 정보 활용하는 방법 과 @RequestParam 어노테이션 사용방법](https://unique-wandflower-4cc.notion.site/6-7-b87465a37c4648f9934db14002772055)

## ddd
### 잘된점
+ 애그리거트와 집합 관계
+ 1:N 관계를 사용할때 발생할 수 있는 문제점
+ N:M 관계를 RDB 와 JPA에서 처리하는 방법
+ 애그리거트에 팩토리 메서드를 적용하여 내부 구현을 캡슐화 하는 방법
### 배운점
+ [애그리거트 간 집합 연관](https://www.notion.so/92c768c5eb2b4031ae9b3a494f951487)
+ [애그리거트와 팩토리 메서드](https://www.notion.so/8f06525c459247f5ab188c50f56a5c8e)

## 오브젝트
### 잘된점
+ 영화 애플리케이션 구조 설계
+ 객체간 협력을 해야 하는 이유
+ 객체간 메시지를 통해 협력하는 방법

### 배운점
+ [영화 애플리케이션 구조 설계](https://unique-wandflower-4cc.notion.site/01-5d84df99c61c4f9b85937ebb7b9e8120)
+ [객체간 협력](https://www.notion.so/02-8e3b03139d7b4c2ea4291c8cecb56db8)

## 자바 알고리즘
### 잘된점 
+ 배열관련 알고리즘 두문제 풀고 정리
### 배운점
+ [보이는 학생](https://unique-wandflower-4cc.notion.site/efcbc6deb6d9485b8cb6d6a7a5c00bfa)
+ [피보나치 수열](https://www.notion.so/1450a8b55b5d42d9b274fbc4754f5118)

## GIT
### 잘된점
+ reset과 revert차이 실습
### 배운점
+ [reset vs revert](https://unique-wandflower-4cc.notion.site/GIT-af134aa416b54bd9998b9ae13dfd65f0)

# 03월 26일
## 오브젝트
### 잘된점
+ 영화 애플리케이션
+ 할인 정책 과 할인 조건
+ 금액 할인 정책 과 비율 할인 정책
+ 순번 조건 과 기간 조건
+ 오버라이딩 vs 오버로딩
+ 생성자 파라미터를 사용하여 객체 초기화
### 배운점
+ [영화 애플리케이션 - 할인 요금 구하기](https://unique-wandflower-4cc.notion.site/03-6e53c55a2ef54dae994466a1405db07d)

## DDD 
### 잘된점
+ JPA리포지터리 사용하여 기본 CRUD 기능 구현
+ DIP를 활용한 리포지터리 모듈

### 배운점
+ [JPA를 활용한 리포지터리 구현](https://unique-wandflower-4cc.notion.site/JPA-be64462cc8b54b3aae1316aba33c061d)

## 자바 알고리즘
### 잘된점
+ 배열관련 알고리즘 한문제 풀고 정리

### 배운점
+ [소수 - 에러토스테네스 체](https://unique-wandflower-4cc.notion.site/ee96f9db88f5431cac1b8aa57d2870a2)

## spring
### 잘된점
+ HTTP message-body에 단순 텍스트를 요청 및 응답해주는 방법
+ HTTP message-body에 JSON을 요청 및 응답해주는 방법
### 배운점
+ [HTTP message-body - 텍스트 , JSON 요청 및 응답](https://unique-wandflower-4cc.notion.site/6-7-b87465a37c4648f9934db14002772055) 


# 03월 27일
## DDD
### 잘된점
+ 엔티티와 밸류 매핑 방법
+ @Embedable 과 @Embedded
+ 기본 생성자 매핑
+ 필드 매핑

### 배운점
+ [엔티티와 밸류 매핑 구현](https://unique-wandflower-4cc.notion.site/d2588cf97db7477b85f25c97ef9d2490)

## 오브젝트
### 잘된점
+ 상속을 사용하는 이유
+ 다형성을 사용했을 때 효과

### 배운점
+ [영화 애플리케이션에 적용된 상속과 다형성](https://unique-wandflower-4cc.notion.site/04-8fafab2ddea94b208b6069cd1a607cd8)

## 기술면점 스터디
### 잘된점
+ 파일과 디렉토리 구조
+ 파티션과 파일시스템
### 배운점
+ [파일 시스템과 RDBMS](https://www.notion.so/6b8cee581e0d4f8ca22c6634ecb01042)

# 03월 28일
## spring
### 잘된점
+ 아이템 서비스 CRUD 기능 구현

## ddd
### 잘된점
+ 밸류 컬렉션을 별도 테이블에 매팽
+ 한개의 컬럼에 밸류 컬렉션 매핑
+ 밸류를 사용한 아이디 매핑
### 배운점
+ [밸류 매핑 처리](https://unique-wandflower-4cc.notion.site/f43d1215d9a941c1b94cba401d5fd506)

## 오브젝트
### 잘된점
+ 상속과 상속에서 다형성
+ 인터페이스와 인터페이스에서 다형성
+ 할인 정책의 경우 왜 추상 클래스 기반 상속을 적용했는가
+ 할인 조건의 경우 왜 인터페이스 기반 다형성을 적용했는가

### 배운점
+ [상송과 다형성](https://unique-wandflower-4cc.notion.site/04-8fafab2ddea94b208b6069cd1a607cd8)


# 03월 29일
## 오브젝트
### 잘된점
+ 상속 과 다형성
+ 인터페이스 와 다형성
+ 추상클래스 대신 인터페이스를 사용해야 하는 이유
+ 상속 과 합성
+ 추상클래스에서 인터페이스로 리펙토링
### 배운점 
+ [추상화와 유연성](https://unique-wandflower-4cc.notion.site/05-391c69b440ab40d9b9d7d4e773c7b470)

## spring
### 잘된점
+ 아이템 관리 아이템 저장시 @ModelAttribute 사용하여 리펙토링 진행

## spring - 블로그 프레적트
### 잘된점
+ 부트스트랩 템플릿에 타임리프 적용하여 레이아웃 적용

## spring mvc 섹션6 ~ 섹션7 스터디
### 잘된점
+ 메시지 컨버터 미디어 타입과 클래스 타입 정리
### 배운점
+ 미디어 타입 : 클라이언트에서 서버로 요청을 보낼때 HTTP 헤더에 컨텐츠의 타입을 전달한다
+ 클래스 타입 : 서버에서 데이터를 변환할 타입
+ [spring 섹션6 ~ 섹션7 정리](https://unique-wandflower-4cc.notion.site/6-7-b87465a37c4648f9934db14002772055)

# 03월 30일
## ddd
### 잘된점
+ 양방향 관계에서 ID를 사용하여 조인하는 방법
+ 밸류를 엔티티로 매핑하는 방법
+ 밸류를 별도 테이블로 매핑하는 방법
+ JPA에서 양방향 관계의 주인을 지정하는 방법
### 배운점
+ [밸류 매핑 처리](https://unique-wandflower-4cc.notion.site/f43d1215d9a941c1b94cba401d5fd506)

## 오브젝트
### 잘된점
+ 객체간 메시지를 통해 협력을 해야 하는 이유
+ 객체의 상태와 행동을 결정하는 방법
+ 영화 애플리케이션 할인 정책이 없는 경우 추가 및 인터페이스 사용하여 코드 리펙토링
### 배운점
+ [역할 , 책임 , 협력](https://unique-wandflower-4cc.notion.site/03-4a4a1229fd424e8bbb71bc73c762dd24)

## 자바 알고리즘
### 잘된점
+ 배열 뒤집은 소수 찾기 문제 풀고 정리
+ String으로 입력받아 뒤집은 후 숫자로 변환하는 방법
+ int로 입력받아 숫자를 뒤집는 방법
### 배운점
+ [뒤집은 소수](https://unique-wandflower-4cc.notion.site/35d27eaf199a45f79109a1a9ba75d4bd)

## spring 기본편 - 다형성
### 잘된점
+ 스프링의 핵심 개념 다형성
+ 자바에서 다형성 과 스프링에서 다형성
+ 객체간 협력
### 배운점
+ [스프링과 다형성](https://unique-wandflower-4cc.notion.site/7355968f8067436f8bca74b3954a0d40)

## GIT - branch
### 잘된점
+ git 브랜치 땋는 방법 실습 및 정리
### 배운점
+ [GIT 브랜치 실습](https://unique-wandflower-4cc.notion.site/GIT-af134aa416b54bd9998b9ae13dfd65f0)

# 03월 31일
## spring
### 잘된점
+ 객체지향 설계의 5원칙
+ SRP , OCP , LSP , ISP , DIP
+ 스프링과 객체지향
+ DI를 사용하여 OCP와 DIP가 가능한 이유

### 배운점
+ [좋은 객체지향 설계의 5원칙 SOLID](https://unique-wandflower-4cc.notion.site/5-SOLID-2c0dba4834234bc29438186e365f8f01)
+ [객체지향 설계와 스프링](https://unique-wandflower-4cc.notion.site/bad82b1343c9440e98f3ea43a36418cc)

## DDD
### 잘된점
+ 애그리거트를 완전한 상태로 만드는 방법 - 즉시로딩
+ 즉시 로딩 단점
+ 애그리거트 영속성 전파 - 애그리거트를 완전한 상태로 매핑하기 위한 cascade 속성
+ 식별자를 생성하는 방법 3가지
### 배운점
+ [애그리거트 로딩 전략](https://unique-wandflower-4cc.notion.site/4f864e52e157449aa016bf55a665bcad)
+ [애그리거트 영속성 전파](https://unique-wandflower-4cc.notion.site/1c556c59628643bfb2379951bd7190f0)
+ [식별자 생성 기능](https://unique-wandflower-4cc.notion.site/bda92dbb566d4f8cb9d1056f72deef64)

## 오브젝트
### 잘된점
+ 책임 주도 설계가 필요한 이유
+ 책임 주도 설계 과정
+ 객체의 상태에 초점을 맞출때 발생하는 문제점
### 배운점
+ [책임](https://unique-wandflower-4cc.notion.site/02-07d2ac53f7fe4fe196b0ca280a773812)

## 자바 알고리즘
### 잘된점
+ 배열 점수계산 문제 풀고 정리
### 배운점
+ [점수계산](https://unique-wandflower-4cc.notion.site/3e02fce6fe0f4b8394d91b1dbbc081b9)

## spring 아이템 관리
### 잘된점
+ create시 시퀀스 생성 코드 리펙토링
+ 기존 : item 저장전 시퀀스 값 증가후 item 저장
+ 수정후 : service에서 item 추가전 먼저 시퀀스를 생성하여 item을 Map에 저장

## git merge 실습
### 잘된점
+ 브랜치 딴후 master 브랜치로 병합하는 과정 실습
### 배운점
+ [브랜치 병합](https://unique-wandflower-4cc.notion.site/GIT-af134aa416b54bd9998b9ae13dfd65f0)


# 04월 1일
## ddd
### 잘된점
+ 리포지터리에서 애그리거트를 메서드를 사용하여 검색하는 방법
+ 검색 조건을 조합하여 find 메서드를 정의하는 방법
+ 검색 조건을 조합하기 위한 Speficiation 인터페이스
+ 스펙을 사용하여 검색 조건을 조합하는 방법

### 배운점
+ [JPA 리포지터리 검색을 위한 스펙](https://unique-wandflower-4cc.notion.site/8c7bc9739b8d45eead758521f776adb9)

## 오브젝트
### 잘된점
+ 동일한 책임을 지는 객체를 역할로 추상화 
+ 추상화의 장점

### 배운점
+ [역할](https://unique-wandflower-4cc.notion.site/03-783ac371d7e3428994a7ddc67109510b)

## spring 기본편
### 잘된점
+ 프로젝스 생성
+ 요구사항 파악 하여 객체지향적으로 설계
### 배운점
+ [비즈니스 요구사항](https://unique-wandflower-4cc.notion.site/11c92cc3040d4c54a10ef35ee8b84d3c)

## 자바 알고리즘
### 잘된점
+ 자바 배열 관련 등수구하기 문제 풀고 정리

### 배운점
+ [등수 구하기](https://www.notion.so/a0c7febacc534031914541c542bc04fd)
## GIT
### 잘된점
+ 3명이서 작업하는 상황 가정하여 브랜치 따고 머지 실습

### 배운점
+ [여러명이 작업하는 상황 가정 브랜치 따고 머지 실습](https://unique-wandflower-4cc.notion.site/GIT-af134aa416b54bd9998b9ae13dfd65f0)

## spring - 아이템 관리
### 잘된점
- 인터페이스를 domain 패키지 밑에repository 패키지로 이동
- 인터페이스 구현체를 infra 패키지로 이동

### 배운점
+ 인터페이스는 도메인 영역에 속하기 때문에 domain 패키지 밑에 repository 패키지를 만들어 인터페이스를 이동시켰다
+ 구현체는 언제든지 바뀔수 있기 때문에 infra 패키지를 만들어 구현체만 따로 분리했다

# 04월 02일
## 자바 알고리즘
### 배운점
+ 배열 관련 격자판 최대합 문제 풀고 정리
### 잘된점
+ [격자판 최대합](https://unique-wandflower-4cc.notion.site/77b13425484d4dd9bc7cb79728206cb8)

## 오브젝트
### 배운점
+ 객체지향적 설계를 해야 하는 이유
+ 다형성을 적용해야 하는 이유
+ 인터페이스를 추상화 해야 하는 이유
+ [다형성](https://www.notion.so/04-8fafab2ddea94b208b6069cd1a607cd8)
+ [추상화와 유연성](https://www.notion.so/05-391c69b440ab40d9b9d7d4e773c7b470)


# 4월 03일
## 기술면접 스터디
### 잘된점
+ RDB와 NoSQL 차이 정리
### 배운점
+ [RDBMS vs NoSQL](https://unique-wandflower-4cc.notion.site/RDBMS-vs-NoSQL-593813d9c9da404490dab3c8bca05b25)
## 오브젝트
### 잘된점
+ 다형성 , 추상화 , 객체의 역할과 책임 복습
+ 다형성과 추상화 
+ 다형성을 적용해야 하는 이유
+ 객체의 역할과 책임
+ 동일한 책임을 갖는 객체의 역할을 추상화 해야 하는 이유
+ 추상화를 통해 얻을 수 있는 효과

### 배운점
+ [협력 , 객체 , 클래스](https://unique-wandflower-4cc.notion.site/02-8e3b03139d7b4c2ea4291c8cecb56db8)
+ [상속과 다형성](https://www.notion.so/04-8fafab2ddea94b208b6069cd1a607cd8)
+ [추상화와 유연성](https://www.notion.so/05-391c69b440ab40d9b9d7d4e773c7b470)
+ [객체의 역할](https://unique-wandflower-4cc.notion.site/03-4a4a1229fd424e8bbb71bc73c762dd24)
+ [객체의 책임](https://unique-wandflower-4cc.notion.site/02-07d2ac53f7fe4fe196b0ca280a773812)

# 04월 04일
## 오브젝트
### 잘된점
+ 데이터 기반 설계의 문제점
+ 올바른 객체지향 설계 방법
### 배운점
+ [데이터 중심 설계의 문제점과 올바른 객체지향 설계](https://unique-wandflower-4cc.notion.site/a32326f5c2614275a95992ca4aeb77d0)

## ddd
### 잘된점
+ JPA AND / OR 스펙조합
+ 스펙을 JPA 리포지터리에서 사용하는 방법
### 배운점
+ [JPA를 위한 스펙 구현](https://unique-wandflower-4cc.notion.site/JPA-3ccb58327cf4409e9059b2bda54372a3)

## 자바
### 잘된점
+ 상속 , 추상 클래스  , 인터페이스 , 다형성 왜 필요한지 정리
+ 추상 클래스와 인터페이스 차이점과 언제 사용해야 하는지 정리
### 배운점
+ [https://unique-wandflower-4cc.notion.site/8fd9cc85a26146688cae6a4724662935]

## 기술면접
### 잘된점
+ DBLock 정리
### 배운점
+ [DBLock](https://unique-wandflower-4cc.notion.site/DB-Lock-5c02cff5a1ec4cb99288260c225ec943)

## spring
### 잘된점
+ 회원도메인 클래스 구조도 기반 설계 진행
+ 회원 도메인 리파지토리에 적용된 인터페이스와 다형성
+ 서비스 메서드 단위테스트
+ 회원 도메인 설계의 문제점
### 배운점
+ [회원 도메인 설계](https://unique-wandflower-4cc.notion.site/fdff0d293620455cb15872e13af28fbe)

# 04월 05일
## 오브젝트
### 잘된점
+ 영화 애플리케이션 할인 정책을 추상클래스에서 인터페이스로 구조를 변경한 이유 정리
### 배운점
+ [할인 정책 추상클래스에서 인터페이스 트레이드오프](https://unique-wandflower-4cc.notion.site/46a8b080c3904229ada999f577a4f3fa)
## 자바
### 잘된점
+ 상속의 is-a 와 has-a 관계 장단점 정리
+ 추상클래스 사용목적 과 인터페이스와 차이점 정리
+ 다형성 사용목적 정리
### 배운점
+ [객체지향 - 상속 , 추상클래스 , 다형성 , 인터페이스](https://unique-wandflower-4cc.notion.site/56346e5bef384d24a2ff7df4909e6762)

# 04월 06일
## 오브젝트
### 잘된점
+ 영화 애플리케이션 데이터 중심 설계의 문제점 
+ 캡슐화를 해야 하는 이유
+ 캡슐화를 하지 않았을때 발생하는 문제점
### 배운점
+ [데이터 중심 영화 애플리케이션 문제점](https://unique-wandflower-4cc.notion.site/e1de49a9ca3542c381dec1e94469e04b)
+ [캡슐화를 하지 않았을때 발생하는 문제점](https://unique-wandflower-4cc.notion.site/1511388910dd4177971847041dffab90)

## spring
### 잘된점
+ 주문 할인 애플리케이션 객체지향적으로 설계
### 배운점
+ [주문 할인 애플리케이션 설계](https://unique-wandflower-4cc.notion.site/8e56b591fe2549378278756e05df096d)


# 04월 07일
## spring
### 잘된점
+ 주문 할인 도메인 객체지향적으로 설계
+ 주문 할인 도메인 단위테스트 진행

## 오브젝트
### 잘된점
+ 영화 얘매 애플리케이션 데이터 중심 설계
+ 데이터 중심 설계를 객체 중심으로 설계 변경
### 배운점
+ [캡슐화를 더 개선할 수 있는 방법](https://unique-wandflower-4cc.notion.site/8184ddc1747d4446b8c5368e8f6c75d0)

## DDD
### 잘된점
+ JPA 기반 정렬
+ JPA 기반 페이징 처리
### 배운점
+ [JPA 정렬 구현](https://unique-wandflower-4cc.notion.site/e70503fc6e5a4b358a841f0b23e14cf5)
+ [JPA 페이징 처리 구현](https://unique-wandflower-4cc.notion.site/a7f2d18b9b7b46cf9320c8f63fe481fa)

## 밋코더 블로그 포스팅 스터디
### 잘된점
+ 오브젝트책 데이터 중심 설계의 문제점 정리
+ 캡슐화를 위반했을때 어떤 문제가 발생하는지 정리
+ 데이터 중심 설계를 해결하는 방법 정리

### 배운점
+ [오브젝트 - 데이터 중심 설계의 문제점](https://unique-wandflower-4cc.notion.site/8-165012e3b0aa48e09555ecc3bf5f42f5)

# 04월 08일
## spring
### 잘된점
+ 할인정책에 비율 할인 정책이 추가되는 경우를 고려한 객체지향적 설계

## 오브젝트
### 잘된점
+ 책임주도설계란 무엇인가
+ 높은 응집도와 낮은 결합도
+ CREATOR 패턴
### 배운점
+ [책임 주도 설계](https://unique-wandflower-4cc.notion.site/8565cd5af5d042a789420638f46ba92f)

## ddd
### 잘된점
+ JPA를 사용하여 조회기능을 구현하는 방법
+ 동적 인스턴스 생성
+ @SubSelect

### 배운점
+ [JPA 조회 전용 기능 구현](https://unique-wandflower-4cc.notion.site/86739d169f11404ebfbbd6884ab8a9cb)



# 04월 12일
## spring
### 잘된점
+ 주문 할인 도메인 AppConfig 클래스 사용하여 관심사 분리
+ 객체지향 설계의 5가지 원칙
+ IoC와 DI란 무엇인가
+ AppConfig 클래스를 스프링이 관리하도록 전환
### 배운점
+ [주문 할인 도메인 설계](https://unique-wandflower-4cc.notion.site/8e56b591fe2549378278756e05df096d)
+ [IoC DI 컨테이너](https://unique-wandflower-4cc.notion.site/IoC-DI-d5f29df6cb28479aaa0ff8d61ed42905)
+ [AppConfig 클래스를 스프링으로 전환하는 방법](https://www.notion.so/8af5e19d16e1416cad173275c16d82b3)

## 오브젝트
### 잘된점
+ 리펙토링을 통해 메서드의 응집도를 낮추는 방법
+ 메시지를 통해 인터페이스가 협력하는 방법
### 배운점
+ [책임 주도 설계의 대안](https://unique-wandflower-4cc.notion.site/141a4b2bfc2f4b44bd6aeac072e26233)
+ [협력과 메시지](https://unique-wandflower-4cc.notion.site/57122b3c449e4c10a577338be5dbfaa6)

## DDD
### 잘된점
+ 응용서비스와 표현영역의 관계 파악
### 배운점
+ [표현 영역과 응용 영역](https://www.notion.so/1bf6ca01aeb54b51a9f17203b32fa746)

# 04월 13일
## 오브젝트
### 잘된점
1. 추상적인 인터페이스를 설계하는 방법
2. 디미터 법칙
3. 메시지 수신자에게 시키기
4. 객체의 인터페이스에는 협력과 관련된 오퍼레이션만을 표현하기

### 배운점
+ [추상적인 인터페이스를 설계하는 방법](https://unique-wandflower-4cc.notion.site/8cbde6a9f8694c9e8e81328e7eeed73a)

## spring
### 잘된점
+ 스프링 컨테이너 구조
+ 모든 빈 조회하는 방법
+ 애플리케이션에서 사용하는 빈만 조회하는 방법 
+ 상속 관계에서 빈 조회하는 방법
+ 동일한 빈의 타입이 두개이상 있는 경우 빈을 조회하는 방법
+ BeanFactory와 ApplicatonContext 차이

### 배운점
+ [스프링 컨테이너 구조와 빈 조회](https://unique-wandflower-4cc.notion.site/c9c8f823e14641e28b667ca04c81ab92)
+ [스프링 빈 조회 - 동일한 타입이 둘 이상 일때](https://unique-wandflower-4cc.notion.site/9dec6e44bc99493db02ecdd3015cc081)
+ [스프링 빈 조회 - 상속관계](https://unique-wandflower-4cc.notion.site/5f29c47d4e0a4a06a55323d8d752c2dd)
+ [BeanFactory와 ApplicationContext](https://unique-wandflower-4cc.notion.site/BeanFactory-ApplicationContext-9f9acea296a64efdb95b66e098ce9345)


# 04월 14일
## spring
### 잘된점
1. xml로 빈 설정하는 방법
2. BeanDefinition - 빈 설정 메타정보
3. 싱글톤 패턴이 적용되지 않은경우 발생하는 문제
4. 싱글톤 패턴으로 객체 생성 실습
5. 스프링 컨테이너에 적용된 실글톤 패턴
6. 싱글턴 객체에 공유 필드가 있을때 발생하는 문제점과 해결책
### 배운점
- [xml을 사용하여 빈 설정 하는 방법](https://unique-wandflower-4cc.notion.site/xml-71f0b21c9edd414daad727fd51ffab7a)
- [spring 빈 설정 메타정보](https://unique-wandflower-4cc.notion.site/spring-efd809ff1b464fffb4d06ef3f43866e9)
- [웹 애플리케이션과 싱글톤 - 싱글톤이 없다면](https://unique-wandflower-4cc.notion.site/49443448b1c144f4b410ce80c38f9d2d)
- [싱글톤 패턴으로 객체 생성 실습](https://www.notion.so/1-2-3-2d466979724f449788cc983cc6f0fa5d#fd3713a184644a4bafbe11597002638c)
- [실글톤 컨테이너](https://www.notion.so/1-2-3-2d466979724f449788cc983cc6f0fa5d#c081ee4008104538922ce2a0a22079f9)
- [실글톤 방식의 문제점](https://www.notion.so/1-2-3-2d466979724f449788cc983cc6f0fa5d#1991dd7f49314c07b169ecb053bd1dd0)




## 오브젝트
### 잘된점
1. 디미터 법칙에 대한 오해
2. 위임 메서드를 사용하여 응집도를 높이고 결합도 낮추기
3. 위임 메서드의 한계

### 배운점
- [인터페이스 설계와 품질 - 디미터 법칙에 대한 오해 와 결합도와 응집도 해결하는 방법과 한계](https://unique-wandflower-4cc.notion.site/8cbde6a9f8694c9e8e81328e7eeed73a)

## ddd
### 잘된점
+ 컨트롤러에서 값 검증하는 방법
+ 서비스단에서 값 검증하는 방법
+ 서비스단에서 권한 검사하는 방법
### 배운점
+ [표현영역과 응용영역에서 값 검증 및 권한 검사](https://unique-wandflower-4cc.notion.site/1bf6ca01aeb54b51a9f17203b32fa746)


# 4월 15일
## spring
### 잘된점
1. @Configuration과 싱글톤
2. 스프링 컨테이너가 싱글톤 객체를 생성하는 원리
3. @ComponentScan을 통해 @Component가 붙은 클래스를 자동으로 빈으로 등록 하고 @Autowired를 통해 의존관계가 자동으로 주입된다
4. 스프링 컴포넌트스캔 스캔 범위설정
5. 스캔 패키지 설정및 스캔 클래스 설정 (basePackage , baseClassName)
6. 빈 등록시 빈이름 중복이 발생하는경우 에러 내용과 해결방법

### 배운점
+ [@Configuration과 싱글톤](https://www.notion.so/Configuration-584458a423fe475d8e972ea2c9b0f3f5)
+ [@Configuration과 바이트코드 조작](https://www.notion.so/Configuration-6340b10bf1c54a13abfbce83415d6674)
+ [컴포넌트 스캔과 의존관계 자동주입](https://www.notion.so/24f42bedfc2a486781ceb3df019f9f19)
+ [탐색 위치와 기본 스캔 대상](https://www.notion.so/fcd49db79ec2406cb9ad626a01161e50)
+ [필터](https://www.notion.so/f5db6e036d074e6d833c1cafd056172c) 
+ [빈등록시 중복과 충돌](https://www.notion.so/4475db903372491096d3d344a199fcac)

## 오브젝트
### 잘된점
1. 명령-쿼리 분리와 참조 투명성
2. 명령과 쿼리를 분리해야 하는 이유
3. 부수효과와 참조 투명성
4. 명령-쿼리 분리의 한계
### 배운점
+ [명령-쿼리 분리와 참조 투명성](https://unique-wandflower-4cc.notion.site/9cab7e2d59ef4fb68ae8973c970496cf)

## DDD
### 잘된점
1. 도메인 서비스
2. 도메인 서비스 객체를 애그리거트에 주입하지 않기
3. 도메인 로직이 외부 시스템이나 별도 엔진을 사용해서 구현해야 할 경우 인터페이스와 클래스 분리


### 배운점
+ [도메인 서비스 영역](https://unique-wandflower-4cc.notion.site/9a706da8580042b0b9f195ba7f712c60)


# 04월 16일
## spring
### 잘된점
+ 의존관계 주입시 옵션 처리 방법
+ 의존관계 주입시 생성자 주입을 선택해야 하는 이유
+ 롬복과 최신 트랜드
+ 의존관계 주입시 동일한 타입의 빈이 2개 이상 존재할 때 충돌을 해결하는 방법
### 배운점
+ [옵션 처리](https://unique-wandflower-4cc.notion.site/64a1ece8fca84b03a86088dd29c9e75a)
+ [생성자 주입을 선택해야 하는 이유](https://unique-wandflower-4cc.notion.site/38efbee7c4bf4b5980bb0be453e82d41)
+ [롬복과 최신 트랜드](https://unique-wandflower-4cc.notion.site/35078da2fe4b49c98068995185c5ffc0)
+ [조회 빈이 2개이상 존재할때 문제](https://unique-wandflower-4cc.notion.site/2-c63f08b621ba4cb6bf21d631c83e6c91)

## 오브젝트
### 잘된점
+ 객체 분해 개요
+ 프로시저 추상화와 데이터 추상화 차이
+ 하향식 기능 분해의 문제점
+ 언제 하향식 기능 분해를 사용해야 하는가

### 배운점
+ [객체 분해 개요 - 프로시저 추상화와 데이터 추상화](https://unique-wandflower-4cc.notion.site/078ec11416974d50894c671ef03855e2)

## DDD
### 잘된점
+ 선점 잠금
+ 비선점 잠금
### 배운점
+ [선점 잠금과 비선점 잠금](https://unique-wandflower-4cc.notion.site/12ca46fa6df3432985903d4a494f3eaa)

# 04월 18일
## spring
### 잘된점
빈 자동 등록과 수동 등록
1. 인터페이스 구현객체가 여러개인 경우 빈을 전부 가져오는 방법
2. 언제 빈 자동 등록을 사용해야 하는가
3. 언제 빈 수동 등록을 사용해야 하는가
빈 생명주기
1. 빈 라이프사이클
2. 빈 등록후 초기화 메서드 설정 방법 3가지
3. 빈 소멸후 메서드 설정 방법 3가지

### 배운점
+ [애노테이션 직접 만들기](https://unique-wandflower-4cc.notion.site/e43486bbedbc47d7a04e32c95a95d5c4)
+ [조회한 빈이 모두 필요한 경우 List와 Map을 활용하는 방법](https://unique-wandflower-4cc.notion.site/List-Map-4eccc170622b4653a95a623e2b9d4573)
+ [빈 자동 등록과 수동 등록의 올바른 기준](https://unique-wandflower-4cc.notion.site/1844f9c5e4934b6398d616d1be9fb093)
+ [빈 생명주기와 빈 등록및 의존관계 주입후 메서드 설정방법 과 빈 소멸후 설정 방법](https://unique-wandflower-4cc.notion.site/0c3845b7e80e414db6464b6526631098)

## 오브젝트
### 잘된점
객체 분해
1. 모듈
2. 추상 데이터 타입
3. 역할과 협력이 중요한 이유

### 배운점
+ [객체 분해 개요](https://unique-wandflower-4cc.notion.site/078ec11416974d50894c671ef03855e2)

## ddd
### 잘된점
+ 비선점 잠금
+ 오프라인 선점 잠금
### 배운점
+ [애그리거트와 트랜잭션](https://unique-wandflower-4cc.notion.site/12ca46fa6df3432985903d4a494f3eaa)

# 4월 19일
## spring
### 잘된점
+ 빈 스코프
1. 싱글톤 스코프
2. 프로토타입 스코프
3. 싱글톤 빈과 프로토타입 빈 이 같이 사용될 경우 문제점
+ Provider를 사용하여 싱글톤 스코프에 적용된 프로토타입 스코프 문제 해결하는 방법

### 배운점
+ [빈 스코프](https://unique-wandflower-4cc.notion.site/186b3f0a725d4fc4a16a251b23059701)

## 오브젝트
### 잘된점
+ 타입 추상화와 절차 추상화
1. 타입 추상화
2. 절차 추상화
3. 타입 계층과 다형성을 적요할때 고민해봐야 하는 것

### 배운점
+ [타입 추상화와 절차 추상화](https://unique-wandflower-4cc.notion.site/078ec11416974d50894c671ef03855e2)

## DDD
### 잘된점
+ BOUNDED CONTEXT
1. 도메인 모델과 경계
2. BOUNDED CONTEXT 간 통합하는 방법
### 배운점
+ [도메인 모델과 BOUNDED CONTEXT](https://unique-wandflower-4cc.notion.site/BOUNDED-CONTEXT-f34fd42691b8495a8b47b8a18db30f9f)

# 04월 20일
## spring
### 잘된점
+ 웹 스코프
1. 정의
2. 특징
3. 종류
4. request 스코프인 빈을 의존관계 주입받을때 발생하는 오류와 원인 정리
+ request 스코프시Provider를 사용하여 스프링 컨테이너의 빈 생성 및 의존관계 주입 시점을 늦춘다
1. 프록시를 사용하던 핵심은 빈을 필요한 시점에 생성할 수 있게 지연시키기 실습 및 정리
2. 프록시를 사용하여 request 요청이 들어오기 전까지는 가짜 프록시 빈으로 버티다가 나중에 로직 실행시점에 해당 빈을 진짜로 갈아끼운다

### 배운점
+ [웹 스코프](https://unique-wandflower-4cc.notion.site/92885a8949474d989ec89a165c445224)

## ddd
### 잘된점
+ 이벤트
1. 시스템이 강하게 결합되 있을때 이벤틀를 사용하여 도메인의 상태를 변경하는 방법 정리

### 배운점
+ [이벤트](https://unique-wandflower-4cc.notion.site/10-fd52bcf4bee3486ba2442d983575aad7)

## 오브젝트
### 잘된점
+ 의존성
1. 의존성 전이
2. 런타임 의존성과 컴파일타임 의존성 차이
3. 컨텍스트 독립성
4. 의존관계 주입방법 3가지

### 배운점
+ [의존성 이해하기](https://unique-wandflower-4cc.notion.site/5a877623005c4f498245cb50d22e0afe)


# 4월 21일
## jpa
### 잘된점
+ JPA 환경설정
+ h2 데이터베이스 세팅
+ JPA와 h2 데이터베이스가 잘 동작하는지 테스트
+ JPA기반 쇼핑몰 요구사항 분석
+ 엔티티 설계도 분석
+ 도메인 설계도 분석
+ 테이블 설계도 분석

### 배운점
+ [프로젝트 환경설정 및 세팅](https://unique-wandflower-4cc.notion.site/564aedfdf8324a2eb82f8b1943ea34ec)
+ [요구사항 분석 및 도메인 설계도 분석](https://unique-wandflower-4cc.notion.site/63949e3229cc43a7b0ce2deee1bf2aa8)



## 오브젝트
### 잘된점
+ 유연한 설계를 위한 의존성
+ 의존성과 결합도 관계
+ 결합도를 느슨하게 유지해야 하는 이유
+ 추상화에 의존해야 하는 이유
+ 명시적 의존성을 사용해야 하는 이유
+ 명시적 의존성을 사용하고 결합도를 느슨하게 했을때 얻을 수 있는 효과

### 배운점
+ [유연한 설계를 위한 의존성](https://unique-wandflower-4cc.notion.site/5a877623005c4f498245cb50d22e0afe)

## ddd
### 잘된점
+ 이벤트 클래스란 무엇인가
+ 이벤트 핸들러 인터페이스 역할
+ AOP를 사용하여 Events reset 메서드 실행하는 방법 
+ 왜 이벤트에서 AOP를 사용해야 하는가

### 배운점
+ [이벤트 클래스 , 핸들러 , 인터페이스](https://unique-wandflower-4cc.notion.site/10-fd52bcf4bee3486ba2442d983575aad7)


## 밋코더 블로그 포스팅 스터디 발표자료 준비
### 잘된점
+ 스프링을 사용하는 이유와 스프링 컨셉
+ 객체지향 프로그래밍 특징 (다형성)
+ 스프링과 객체지향
+ SOLID 객체지향 5가지 설계 원칙
+ IoC 컨테이너와 DI

### 배운점
+ [스프링을 사용하는 이유와 객체지향](https://unique-wandflower-4cc.notion.site/10-1e861ff1e543404fa0f352983b2bac15)


# 04월 22일
## jpa
### 잘된점
+ JPA 엔티티 클래스 설계 코드리뷰 
1. Member와 Address
2. Member와 Order
3. Order와 OrderItem
4. OrderItem과 Item
5. Order와 Delivery
6. Order와 OrderStatus
+ JPA 엔티티간 상속관계 표현방법
1. @Inheritance 어노테이션의 startegy 속성으로 상속관계 매핑 전략을 설정
2. SINGLE_TABLE인 경우 모든 자식 엔티티가 하나의 테이블로 합쳐져서 생성
3.@DiscriminatorColumn(name = "dtype")을 사용하여 자식 엔티티들간 구분값 지정
+ JPA 연관관계 실습
1. 데이터 중심 설계의 문제점
2. 테이블 중심 설계와 객체 중심 설계의 차이
3. 연관관계 주인 설정하는 방법

### 배운점
+ [엔티티 클래스 개발 1](https://unique-wandflower-4cc.notion.site/1-7c916a4a33444d0ab91bee505104f41d)

# 04월 23일
## jpa
### 잘된점
JPA 엔티티 클래스 분석1
1. Order와 OrderItem 관계
2. Order와 Delivery 관계
3. Order와 OrderStatus 관계

### 배운점
+ [엔티티 클래스 분석 1](https://unique-wandflower-4cc.notion.site/1-7c916a4a33444d0ab91bee505104f41d)


 # 04월 24일
 ## ddd
 ### 잘된점
 + 이벤트
 + 이벤트를 비동기로 처리할 수 있는 방법

 ### 배운점
 + [비동기 이벤트 처리](https://unique-wandflower-4cc.notion.site/10-fd52bcf4bee3486ba2442d983575aad7)

 ## 오브젝트
 ### 잘된점
 - 유연한 설계를 위한 방법 …
1. 개방 패쇄 원칙
- 컴파일타임 의존성을 유지하고 런타임 의존성을 확장해야 하는 이유
- 추상화 와 개방 패쇄 원칙
2.생성 사용 분리
- FACTORY를 사용해야 하는 이유
- 순수 가공 객체를 사용해야 하는 이유
3. 의존성 주입
- 의존성을 숨기는 코드가 좋지 않은 이유

### 배운점
+ [유연한 설계 - 개방 패쇄 원칙](https://unique-wandflower-4cc.notion.site/b164076a2eee42feaf2b482abf43d69b)

# 4월 25일
## jpa
### 잘된점
+ 엔티티 연관관계 설정
1. Category와 Item 연관관계 설정
2. Category 엔티티 계층관계 설정
+ 엔티티 설계시 주의할 점
1. setter 메서드를 사용하지 않는다
2. 지연로딩 사용해야 하는 이유
3. 연관관계 편의 메서드 목적
4. CASCADE - 엔티티 상태 변화 전파

### 배운점
+ [엔티티 연관관계 설정](https://unique-wandflower-4cc.notion.site/2-7e1bf610af6846e595fc24ef60b8207c)
+ [엔티티 설계시 주의할 점](https://unique-wandflower-4cc.notion.site/6238a85e59b94d4b8387a798c747a978)


# 4월 26일
## JPA
### 잘된점
+ 회원 가입 및 목록 조회 비즈니스 로직 및 리파지터리 구현
+ 상품 관리 비즈니스 로직 및 리파지터리 구현
+ 테스트 코드 작성

## ddd
### 잘된점
+ CQRS 도입 배경
- 단일 모델의 단점
- CQRS 도입 배경
- CQRS 장단점

### 배운점
+ [CQRS](https://unique-wandflower-4cc.notion.site/11-CQRS-5cd8f9d198584ab7b883a048696831cb)

## 오브젝트
### 잘된점
+ 객체지향 패러다임에서 의존성 역정 원칙이 필요한 이유
- 추상화 의존성 역전의 관계
- 의존성 역전과 패키지 관계
- 유연한 설계와 복잡성
- 의존성을 관리해야 하는 이유

### 배운점
+ [의존성 역전 원칙](https://unique-wandflower-4cc.notion.site/18500d18fa414520ac21e11e9e3392eb)
+ [유연성에 대한 조언](https://unique-wandflower-4cc.notion.site/c6addf52be974679a1d239112767b48a)

# 4월 27일
## JPA
### 잘된점
+ 아이템 등록 서비스 테스트
- 아이템 등록 테스트
+ 상품 주문 , 주문 조회, 주문 취소 비즈니스 로직 설계
- 서비스단 설계
- 도메인 로직 설계
- 리포지터리 설계
+ 상품 주문 기능 테스트
- 상품 주문 테스트 작성


# 4월 28일
## JPA
### 잘된점
+ 아이템 등록 기능 구현
+ 아이템 목록 조회 기능 구현
+ 아이템 수정 기능 구현
+ 회원 등록 기능 구현
+ 회원 목록 조회 기능 구현
+ 상품 주문시 재고수량 초과 테스트

### 배운점
+ [JUNIT 에러 테스트 하는 방법](https://unique-wandflower-4cc.notion.site/0d0c164203fd44f8b88c5be15555a4a4)

# 4월 29일
## JPA
### 잘된점
1. 주문 및 주문 목록 조회 , 주문 취소 기능
- 상품 주문 기능 구현
- 주문 목록 조회 기능 구현
- 주문 취소 기능 구현
2. 엔티티 변경 감지와 merge
- 준영속 엔티티
- 더티체킹
- 데이터베이스에 변경 데이터를 저장하는 시점

### 배운점
+ [변경감지와 merge](https://unique-wandflower-4cc.notion.site/merge-d3a475fa0dea4196810d2c8b4f246210)
+ [기능 구현하면서 발생했던 에러](https://unique-wandflower-4cc.notion.site/b827b97406894ce5887d922c388bd397)
+ [주문 관리 프로젝트 정리](https://unique-wandflower-4cc.notion.site/05194b29973f4f25bfe3e19b34f0ff17)

# 4월 30일
## JPA 기본편
### 잘된점
+ JDBC와 JPA 차이점 정리
+ SQL 중심 개발의 문제점

### 배운점
+ [JPA와 JDBC 차이점](https://unique-wandflower-4cc.notion.site/JDBC-vs-JPA-b685912285224df3bdf099ba6ac8d04e)
+ [SQL 중심 개발의 문제점](https://unique-wandflower-4cc.notion.site/SQL-3d5632ea62734c63b94fdab08daca595)

# 5월 01일
## spring db
### 잘된점
+ JDBC 인터페이스 등장배경
+ JDBC를 사용했을때 문제점
+ SQL Mapper와 ORM 등장배경
+ SQL Mapper와 ORM 차이

### 배운점
+ [JDBC 등장 배경](https://unique-wandflower-4cc.notion.site/JDBC-7d97b8b8e73a4ee8bd6e641a42dffeb9)
+ [JDBC 사용하여 h2데이터베이스 연결테스트](https://unique-wandflower-4cc.notion.site/JDBC-h2-37b28dde97d544b99fe6cd41f846493e)


# 5월 02일
## 블로그 프로젝트
### 잘된점
+ JDBC 사용하여 oracle 데이터베이스 연동 테스트
+ 게시글 CRUD 테스트 코드 작성
+ 게시르 CRUD 기능 리포지터리 코드 작성

## spring db
### 잘된점
+ 커넥션 풀에서 커넥션을 획득하는 과정 정리
+ DataSource를 사용하여 커넥션을 획득하는 과정 정리 및 실습
+ DriverManager를 사용하여 커넥션을 획득하는 과정 정리 및 실습

### 배운점
+ [커넥션 풀 개념](https://unique-wandflower-4cc.notion.site/edfa4dec64e9479c970f0755d11b9b09)
+ [DataSource를 사용하여 커넥션 획득하는 과정 정리](https://unique-wandflower-4cc.notion.site/DataSource-5d734fbd81754d1ea4bfe73ae06f4ed7)


# 5월 3일
## spring db
### 잘된점
+ 트랜잭션이란 무엇인가
+ 트랜잭션 내부에서 커밋과 롤백을 계좌이체 예제를 통해 알아보기
+ DB 락이란 무엇인가
+ 조회시 락을 거는 이유

### 배운점
+ [트랜잭션과 DB락](https://unique-wandflower-4cc.notion.site/7a76d317832446738e15453d191b289b)

## 블로그 프로젝트
+ 게시글 CRUD 비즈니스 로직 작성
+ 비즈니스 로직 CRUD 테스트 코드 작성 및 테스트 진행
+ 게시글 리파지토리의 커녁션을 생성하는 작업을 DriverManager에서 HikariDataSource 로 교체


# 5월 4일
## spring db
### 잘된점
+ 트랜잭션 예제 - 계좌이체 중 예외발생 테스트 에러 해결 및 회고
+ 트랜잭션 개념 정리
### 배운점
- 비즈니스 로직에서 예외가 발생했을때 리포지터리의 udpate 메서드에 커넥션을 전달하지 않았다
- 데이터가 트랜잭션 시작 전으로 롤백되지 않아 테스트 중 에러가 발생했다
- 이를 해결하기 위해 리포지터리의 update 메서드에서도 동일한 커넥션이 유지되도록 커넥션을 파라미터로 전달해줬다
- [트랜잭션](https://unique-wandflower-4cc.notion.site/7a76d317832446738e15453d191b289b)

## 블로그 프로젝트
### 잘된점
+ 게시글 CRUD 테스트 코드 리펙토링
+ 게시글 RESTController 설계 및 postman 사용하여 테스트
+ 진행하면서 발생했던 에러 및 코드 리펙토링 과정 정리

# 5월 5일
## spring db
### 잘된점
+ 트랜잭션 매니저를 사용하여 트랜잭션을 추상화 한다
+ 기존에 JDBC에 종속적이였던 비즈니스 로직 코드를 트랜잭션 매니저를 사용하여 해결
+ 기존에는 커넥션을 파라미터로 전달해 줘야 했지만 트랜잭션 매니저를 사용하면
+  트랜잭션 동기화 매니저에 보관된 커넥션을 꺼내서 사용한다

### 배운점
+ [트랜잭션 매니저를 통해 트랜잭션을 추상화 해야 하는 이유](https://unique-wandflower-4cc.notion.site/101c4a60305048fdaee15f2401bd5e0b)

## 블로그 프로젝트
### 잘된점
+ 트랜잭션 매니저를 사용하여 서비스 레이어 비즈니스 로직 트랜잭션 처리
+ 비지니스 로직 트랜잭션 처리 테스트 코드 작성 및 테스트 진행
+ 컨트롤러에서 요청을 보냈을때도 정상동작하는지 포스트맨 사용하여 테스트 진행
+ 게시글 컨트롤러 JSON 요청을 받을 객체를 ArticleRequest로 통일
+ 변경후 레스트 컨트롤러 잘 동작하는지 포스트맨 사용하여 테스트 진행


# 5월 6일
## 블로그 프로젝트
### 잘된점
1. 댓글 삭제시 올바른 예외가 발생하는지 테스트
+ 삭제테스트를 올바르게 진행하기 위해 댓글을 삭제하고 난후
+ PK 값으로 다시 조회했다
+ 조회했을때 올바르게 삭제가 되었다면 NoSuchElementFoundException 예외를 던진다
+ 해당 예외가 잘 발생되는지 AssertJ의 assertThatThrownBy 메서드를 사용하여 테스트 했다
2. 댓글 리파지터리 CRUD 테스트 코드 작성
3. CRUD 테스트 진행하면서 발생했던 SQL 관련 에러 및 해결과정 정리


# 5월 7일
## 블로그 프로젝트
### 잘된점
+ 계층형 댓글 insert 테스트
+ 댓글 계층형으로 조회 테스트

### 배운점
+ 정렬조건 쿼리 수정
+ 기존에는 댓글이 속한 그룹 번호와 댓글 번호로만 정렬했었다
+ 계층적으로 댓글이 표현되지 않는 문제점이 있었다
+ 수정한 정렬조건 쿼리
+ 댓글 그룹 오름차순
+ 댓글 깊이 오름차순
+ 댓글 번호 내림차순


# 5월 8일
## 블로그 프로젝트
### 잘된점
+ 계층형 댓글 조회시 댓글의 깊이를 사용하여 각 댓글의 계층이 맞는지 검증하는 테스트 진행
+ 계층형 댓글 삭제 테스트 진행
+ 계층형 댓글 수정 테스트 진행

# 5월 9일
## 블로그 프로젝트
### 잘된점
+ 계층형 댓글 비즈니스 로직 기능 구현
+ 계층형 댓글 비즈니스 로직 테스트 작성
+ 계층형 댓글 비즈니스 로직 테스트 진행

### 배운점
+ 오라클 쿼리 오류(ORA-01747: invalid user.table.column, table.column, or column specification)
+ 테이블의 컬럼명 또는 컬럼명의 이름에 이상이 있을경우 발생하는 에러

# 5월 10일
## 블로그 프로젝트
### 잘된점
+ 계층형 댓글 비즈니스 로직 트랜잭션 적용
+ 계층형 댓글 Insert 비즈니스 로직 테스트
+ 계층형 댓글 delete 비즈니스 로직 테스트

## 팀프로젝트
+ 아이디어 구상 회의
+ 아이디어 구체화


# 5월 11일
## 블로그 프로젝트
### 잘된점
+ 댓글 컨트롤러 설계
+ POSTMAN 사용하여 컨트롤러 REST API CRUD 테스트
+ MockMvc 객체 사용하여 컨트롤러 기능 테스트

## 팀프로젝트
### 잘된점
+ 아이디어 구체화를 위한 회의 진행
+ 기능 명세서 작성을 위한 기능 분담
+ 피그마 사용하여 프로젝트 레이아웃 설계


# 5월 12일
## 블로그 프로젝트
### 잘된점
+ 테스트 용으로 만들어 뒀던 리파지터리 삭제
+ 테스트 용으로 만들어 뒀던 서비스 삭제
+ 테스트 정상적으로 동작하는지 테스트
## 팀프로젝트
### 잘된점
+ 멘토링을 통해 기획안 점검
+ 메인 기능에 집중하기 위해 부수적인 아이디어는 제외
+ 다른 사이트와 차별화 시키기위한 전략 새로 구상

# 5월 13일
## 팀프로젝트
### 잘된점
+ 피그마 보면서 기능 수정
+ https://unique-wandflower-4cc.notion.site/38f70e68a5144deea9f0220046b02d6a


# 5월 14일
## 팀프로젝트
### 잘된점
+ 피그마 실제 데이터 넣고 기능 구체화
+ 기술명세서 구체화
+ erd 개요 잡기

### 배운점
+ [erd 개요](https://unique-wandflower-4cc.notion.site/erd-cd22ab69e5704fc38e10d8cd0afb249c)
+ [기능 명세서](https://www.notion.so/ooLa-1389c563c730413583f7b612d9235bee)

# 5월 15일
## 팀 프로젝트
### 잘된점
+ 테이블 erd 설계

### 배운점
+ 테이블 명은 간결하고 누구나 알기 쉽게 지을것
+ 테이블 명만 보고 어떤 테이블인지 알수 있게 지을것
+ 테이블로 쪼개야 하는 경우는 자주 써야 하는 데이터인 경우에만 쪼개야 한다
+ 굳이 테이블로 나눠야 하는지 나누지 않고 처리할수 있는 방법은 없는지 고민해 볼것
+ [erd 명세서](https://unique-wandflower-4cc.notion.site/ERD-6a80f456b7c945e4ae3f5c7a6fae76c2)

# 5월 16일
## 팀프로젝트
### 잘된점
+ 테이블 erd 구조 변경
+ url 명세서 개요 작성하여 백에서 어떤 데이터를 줄것이고 프론트에서 어떤 데이터를 받아야 할지 개요 설계

### 배운점
+ 유저가 사용하는 언어의 경우 
+ 팀 회의를 통해 요청시 보내줘야 하는 JSON 데이터 확정
+ oauth를 통해 displayName과 photoUrl 정보를 가져와서 회원정보 테이블에 반영하는 것으로 설계방향 수정 결정
+ 알림에 대해서 내일(17일) 회의를 통해 추가적인 논의 필요
+ [erd 회의를 통한 수정방향](https://unique-wandflower-4cc.notion.site/ERD-6a80f456b7c945e4ae3f5c7a6fae76c2)

# 5월 17일
## 팀 프로젝트
### 배운점
+ URI 명세서 기반 피드백 진행
+ erd 기반 피드백 진행
+ 스터디 상세페이지 기능별로 API 구분 하여 재설계
+ 피드백받은 내용 바탕으로 진행방향 정리
+ [URI 피드백 내용 정리](https://unique-wandflower-4cc.notion.site/URI-c7f0fc7f8ef44af185d501f36bbaedf8)

# 5월 18일
## 팀 프로젝트
### 잘된점
+ URI 명세서 정리
+ 알람 기능 수정
+ erd 좋아요 테이블 추가


# 5월 19일
## 팀프로젝트
### 잘된점
+ URI 명세서 기능단위로 재정리
+ erd 명세서 수정

# 5월 20일
## 팀 프로젝트
+ 헤로쿠가 무엇인가
+ [헤로쿠](https://unique-wandflower-4cc.notion.site/f3025cdd416346649e589d2bd853de09)
### 잘된점
+ API 문서 최종 제출
+ ERD 문서 연관관계 수정하여 최종 제출
+ [1주차 회고](https://unique-wandflower-4cc.notion.site/1-71b15e7cef4f40c5a707be63ec74b746)
+ [2주차 회고](https://unique-wandflower-4cc.notion.site/2-2fbe42f256954404a79d3e225b9cf96a)
+ [프로젝트 세팅 및 환경설정 관련 에러 및 해결과정 정리](https://unique-wandflower-4cc.notion.site/5033fd6e39934121b45141492fa632f4)

# 5월 22일
## 팀 프로젝트
+ 깃에 백엔드 프로젝트 생성
+ 프로젝트 환경설정
+ CI/CD 환경 세팅
+ 엔티티 설계

# 5월 23일
## 팀 프로젝트
+ 백엔드 리파지터리에 깃 Actions 사용하여 헤로쿠 CI/CD 적용
+ 백엔드 예외를 처리하기 위한 Exception 클래스 설계

# 5월 24일
## 팀 프로젝트
- ControllerAdviser 사용하여 ExceptionHandler 설계 및 PR 요청
- 파이어베이스 oauth 프로젝트 생성
- 파이어베이스 oauth 연동 작업 진행 중
- 세션 쿠키 관련 내용 정리


# 5월 25일
## 팀프로젝트
+ heroku 자동 배포 에러 처리
+ 인증과 인가 관련 개념정리
+ 서버에서 인가를 처리하는 방법 5가지와 장단점 정리

# 5월 26일
## OAuth
+ 생활코딩 OAuth 관련 강의 듣고 정리
## 팀프로젝트
+ firbase 프로젝트 생성
+ FirebaseAuth 인증관련 모듈 초기화
+ spring security 관련 설정
+ Firebase Token 검증하는 필터 생성
+ 작업후 PR 요청 및 리뷰 진행
+ AuthFilter를 초기화 해주는 방법에 대한 고민 필요


# 5월 27일
## 팀프로젝트
+ AuthFilterContainer 객체 초기화 해주는 AuthConfig 클래스 추가 및 JwtFilter 설정
+ 테스트를 위한 MockJwtFilter 설정

# 5월 30일
## 팀 프로젝트
- 팀프로젝트 procfile 배포시 active 설정 변경
- firebase oauth 연동 중 에러 발생하는 부분 정리
- heroku 서버 설정

# 5월 31일
## 팀프로젝트
+ firebase oauth 로그인 테슽 에러 해결
+ study api JSON 설계
+ queryDSL 설정 진행중

# 6월 1일
## 팀프로젝트
+ study CRUD 기능 구현
+ study CRUD 기능 테스트 코드 작성 

# 6월 2일
## 팀 프로젝트
+ study crud 기능 피드백 반영하여 수정
+ 예외처리 작업 진행
+ 예외발생 테스트 케이스 작성 및 테스트 진행

##  react
+ 리엑트 환경설정 및 프로젝트 생성
+ 소스코드 구조 파악
+ 컴포넌트 개념 정리 및 실습
+ props 개념 정리 및 실습


# 6월 3일
## 팀 프로젝트
+ 프론트와 구글 로그인 API 맞춰봄
+ 프론트에게 로그인 및 회원가입 동작과정 설명
+ 앞으로 2주동안 기능 개발 계획 일정 상의
+ study 조회시 로그인 권한 관련 중복코드 수정
+ queryDSL 설정 및 커밋시 코드 충돌 에러 해결


# 6월 4일
## 팀 프로젝트
+ 스터디 검색 API 개발
+ 스터디 검색 API 테스트

# 6월 5일
## 팀 프로젝트
+ 스터디 필터링 결과에 대한 페이징 처리 개발
+ 페이징 처리 테스트 코드 작성

# 6월 6일
## 팀 프로젝트
+ queryDSL 사용하여 페이징 처리
+ 검색 필터링 조회 코드 queryDSL 사용하여 리펙토링
+ 현재까지 작업완료된 API 문서화 하여 프론트 팀프원들에게 전달
+ 에러 해결과정 정리

# 6월 7
## 팀 프로젝트 
+ 배포시 jar 파일명 에러 해결
+ queryDSL 설정 에러 해결
+ 향후 개발 일정 및 계획 수립

# 6월 8일
## 팀 프로젝트
+ 로그인 배포시 프론트쪽 에러 해결
+ 회원가입 배포시 프론트쪽 에러 해결

# 6월 9일
## 팀 프로젝트
+ 회원가입 서버쪽 배포 에러 해결

# 6월 10일
## 팀 프로젝트
+ 팀프로젝트 스터디 필터링 조회 API 프론트와 맞춰보면서 프론트쪽 쿼리 스트링 애러 해결
+ 스터디 개설 비즈니스로직 코드 수정
+ 스터디 참여 신청 비즈니스로직 코드 수정
+ 스터디 참여자 정보조회 JPA query 성능 최적화