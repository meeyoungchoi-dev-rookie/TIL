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
  













