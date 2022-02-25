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



## spring
### 잘된점
+ mvc 프레임워크 만들기 - 서블릿 종속성 제거 및 뷰이름 중복 제거

### 배운점
+ []