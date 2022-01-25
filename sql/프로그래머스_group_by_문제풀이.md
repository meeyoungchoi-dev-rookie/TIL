출처

[https://programmers.co.kr/learn/courses/30/lessons/59040](https://programmers.co.kr/learn/courses/30/lessons/59040)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/2607e1bc987c47789ef7c2e00e9af342)

동물 보호소에 들어온 동물 중 고양이와 개가 각각 몇 마리인지 조회하는 SQL문을 작성해주세요. 이때 고양이를 개보다 먼저 조회해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/a4491c567eca4a87b0ab4b39bf3f4eb9)

고양이는 2마리, 개는 1마리 들어왔습니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/1ded14a257674608acbafcf106f398f2)

무엇:

animal_ins 테이블에서 animal_type 컬럼의 값이 cat 인 경우와 Dog인 경우에 해당하는 동물이 몇마리 있는가

### 내가 생각한 풀이 과정

- animal_type 컬럼의 값이 Cat 아니면 Dog이다
- 따라서 GROUP BY를 사용하여 데이터를 Cat 과 Dog 그룹으로 묶어준다
- 각 그룹의 마리수를 계산해야 한다
- 따라서 COUNT 집계함수를 사용하여 Cat 그룹과 Dog 그룹에 대한 row 개수를 카운팅한다
- 데이터를 보여줄때 Cat이 Dog 보다 먼저 오게 해야 하므로
- animal_type 컬럼을 기준으로 오름차순 정렬한다

```sql
SELECT animal_type AS "ANIMAL_TYPE" ,  COUNT(animal_type) AS "count"
FROM animal_ins
GROUP BY animal_type
ORDER BY animal_type ASC;
```

### 실행 결과

```sql
ANIMAL_TYPE	count
Cat	        15
Dog	        85
```






출처

[https://programmers.co.kr/learn/courses/30/lessons/59041](https://programmers.co.kr/learn/courses/30/lessons/59041)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/99a92a0744f04263b971c710749eefe0)

동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요. 이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/7f1ef37a9af946ea886ca41ea500bb0c)

- Raven 이름은 2번 쓰였습니다.
- Lucy 이름은 3번 쓰였습니다
- Shadow 이름은 1번 쓰였습니다.

따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/b4682c88bd9641a48a72d5a27c9de163)

무엇:

animal_ins 테이블에서 같은 이름을 갖는 동물의 수를 찾는다

단, 같은 이름이 2마리 이상인 데이터가 기준이다

또한 name 컬럼이 NULL인 경우는 제외해야 한다

### 내가 생각한 풀이 과정

- 같은 이름이 기준이므로 name 컬럼으로 기준으로 그룹으로 묶어준다
- 같은 이름이 2마리 이상인 조건이 있으므로 그룹 안에서  name 컬럼을 기준으로 카운팅 했을때 두마리 이상인지 확인해 줘야 한다
- 또한 이름이 NULL이면 안되므로 NULL 조건도 체크해줘야 한다
- 이름을 오름차순으로 정렬하라고 했기 때문에 ASC 예약어를 사용한다

```sql
SELECT name AS "NAME" , COUNT(name) AS "COUNT"
FROM animal_ins
GROUP BY name
HAVING COUNT(name) >= 2 AND name IS NOT NULL
ORDER BY name ASC;
```

### 실행 결과

```sql
NAME	   COUNT
Lucy	   3
Raven	   2
```



출처

[https://programmers.co.kr/learn/courses/30/lessons/59412](https://programmers.co.kr/learn/courses/30/lessons/59412)

### **문제 설명**

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/29ae5a28b60c41d69fb708c0b13641f5)

보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

### 예시

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/5a371a10dcab452e8904c989d0ff0ac1)

무엇:

animal_outs 테이블에서 입양 시간대별 몇명의 동물이 입양되는 지 조회한다

### 내가 생각한 풀이 과정

- datetime 컬럼에서 시간 정보만 필요하다
- 따라서 date_format 함수를 사용하여 시간만 추출한다
- 오전 9시 부터 오후 19시 59 분 까지가 시간 범위 이므로
- WHERE 절과 BETWEEN 구문을 사용하여 조건을 만들어 준다
- 각 시간대별 몇 마리의 동물이 입양되는 지 알아야 하므로
- 각 시간대별 로 그룹을 만들어주기 위해 GROUP BY 를 사용한다
- 시간대별 오름차순으로 정렬해야 하므로 ORDER BY ASC 구문을 사용한다

```sql
SELECT date_format(datetime, '%H') AS "HOUR" , COUNT(date_format(datetime,'%H')) AS "COUNT"
FROM animal_outs
WHERE date_format(datetime, '%H') BETWEEN 9 AND 19
GROUP BY date_format(datetime, '%H')
ORDER BY date_format(datetime, '%H') ASC;
```

### 실행 결과

```sql
HOUR	COUNT
09	  1
10	  2
11	  13
12	  10
13	  14
14	  9
15	  7
16	  10
17	  12
18	  16
19	  2
```



출처

[https://programmers.co.kr/learn/courses/30/lessons/59413](https://programmers.co.kr/learn/courses/30/lessons/59413)

### **문제 설명**

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/4bc60a85070c4bc08c79d3a6fba18cab)

보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.

### 예시

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/348a025a126c43da9038b1433e8365e3)

무엇:

0시 부터 23시 까지 각 시간대별 입양이 몇건이 발생하는가

### 내가 생각한 첫번째 풀이 과정

- 각 시간대별로 그룹을 지정한 후
- 시간에 대한 조건을 지정하였다
- 0시부터 23시 까지 이므로
- HAVING 절을 사용하여 시간에 대한 조건을 지정하였다

```sql
SELECT date_format(datetime, '%H') AS "HOUR" , COUNT(date_format(datetime,'%H')) AS "COUNT"
FROM animal_outs
GROUP BY date_format(datetime, '%H')
HAVING HOUR >= 0 AND HOUR <= 23
ORDER BY date_format(datetime, '%H') ASC;
```

- 하지만 animal_outs 테이블에는 07 시 부터 16시 까지 데이터만 있었다
- 따라서 이를 해결하기 위해 다른사람 풀이를 참고 하였다

### 다른 사람 풀이 참고

- SET 을 사용하여 시간 변수를 지정하였다 값은 -1로 설정해 뒀다
- 데이터를 조회하기 위해 hour 변수에 + 1 씩 더해준다
- hour 값이 23 보다 작은지 WHERE 구문에서 검사해준다
- 조건에 맞는 경우
    - 서브쿼리를 통해 해당 시간에 입양된 로우 개수를 카운팅 한다

```sql
SET @hour := -1; -- 변수 선언

SELECT (@hour := @hour + 1) as HOUR,
(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @hour) as COUNT
FROM ANIMAL_OUTS
WHERE @hour < 23
```

### 실행 결과

```sql
HOUR	COUNT
0	    0
1	    0
2	    0
3	    0
4	    0
5	    0
6	    0
7	    3
8	    1
9	    1
10	  2
11	  13
12	  10
13	  14
14	  9
15	  7
16	  10
17	  12
18	  16
19	  2
20	  0
21	  0
22	  0
23	  0
```