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
