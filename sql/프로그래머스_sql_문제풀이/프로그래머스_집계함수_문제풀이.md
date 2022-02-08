문제 출처 : 

[https://programmers.co.kr/learn/courses/30/lessons/59415](https://programmers.co.kr/learn/courses/30/lessons/59415)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/fe8b4211003245d2b617fcad57f84d6a)

가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/665ad57eb44141c5abe135c6d25726dc)

가장 늦게 들어온 동물은 Anna이고, Anna는 2013-11-18 17:03:00에 들어왔습니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

시간

---

2013-11-18 17:03:00

---

무엇

animal_lns 테이블에서 보호시작일이 가장 늦은 순으로 정렬하고 가장 늦은 날짜 데이터를 추출한다

### 내가 생각한 풀이 과정

- animal_ins 테이블에서 보호시작일 (datetime) 컬럼을 조회한다
- 가장 늦은 날짜 데이터 순으로 정렬해야 한다
- ORDER BY 구문을 사용하여 datetime 컬럼을 내림차순으로 정렬한다
- 가장 늦은 데이터 하나만 추출해야 하므로 LIMIT 예약어를 사용하요 상위데이터 하나만 추출한다

```sql

SELECT datetime AS "시간" 
FROM animal_ins
ORDER BY datetime DESC
LIMIT 1;
```

### 결과 화면

```sql
시간
2018-02-03 10:40:00
```







문제 출처:

[https://programmers.co.kr/learn/courses/30/lessons/59038](https://programmers.co.kr/learn/courses/30/lessons/59038)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/b7300dfcbeac40f48df7d5df677fbfd1)

동물 보호소에 가장 먼저 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/2ffc261fcd09487baf4f9a87daa82f1f)

가장 먼저 들어온 동물은 Jack이고, Jack은 2013-10-14 15:38:00에 들어왔습니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

시간

---

2013-10-14 15:38:00

---

### 무엇

animal_ins 테이블에서 가장 보호시작일이 빠른 datetime 데이터를 하나만 추출한다

### 내가 생각한 풀이 과정

- animal_ins 테이블에서 datetime 컬럼을 기준으로 데이터를 조회한다
- 가장 보호시작일이 먼저된 row를 찾아야한다
- 따라서 ,  ORDER BY 구문을 사용하여 datetime 컬럼을 오름차순으로 정렬한다
- 가장 보호시작일이 빠른 row 하나만 추출해야 하므로 LIMIT 예약어를 사용하여 상위 한개 row만 추출한다

```sql
SELECT datetime AS "시간"
FROM animal_ins
ORDER BY datetime ASC
LIMIT 1;
```

### 실행 결과

```sql
시간
2013-10-14 15:38:00
```

### 내가 생각한 두번째 풀이 과정

- MIN 함수를 사용한다
- MIN :  데이터중 최솟값을 추출하는 함수
- 이를 날짜 데이터에 사용하면 가장 옛날 날짜 데이터를 추출할 수 있다

```sql
SELECT MIN(datetime) AS "시간"
FROM animal_ins;
```

### 결과 화면

```sql
시간
2013-10-14 15:38:00
```





문제 출처:

[https://programmers.co.kr/learn/courses/30/lessons/59406](https://programmers.co.kr/learn/courses/30/lessons/59406)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/107bc0f01ca64e66b6027125b5069a2c)

동물 보호소에 동물이 몇 마리 들어왔는지 조회하는 SQL 문을 작성해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/114bcff3838344ce80d2cdf5919bc632)

동물 보호소에 들어온 동물은 4마리입니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

count

---

4

---

### 무엇

animal_ins 테이블에서 총 동물의 개수를 구한다

즉 , 테이블의 전체 로우의 개수를 구하면 된다

### 내가 생각한 풀이 과정

- animal_ins 테이블에서 전체 데이터를 조회한다
- 전체 데이터의 row 개수를 구해야 하므로 집계함수 COUNT 를 사용한다
- `COUNT(*)` :  테이블의 모든 행의 개수를 구한다 (단 , count 결과에 NULL이 포함된다)
- `COUNT(컬럼명)` : 테이블에서 컬럼에 해당하는 모든 행의 개수를 구한다 (단 , count 결과에 NULL이 포함되지 않는다)

```sql
SELECT COUNT(*) AS "count"
FROM animal_ins;
```

### 결과 화면

```sql
count
100
```

### 참고

COUNT 집계함수 관련 정리 내용

[집계함수](https://www.notion.so/f86d46e9b06b43d3bdf9bc4840ea1b0f)





문제 출처:
[https://programmers.co.kr/learn/courses/30/lessons/59408](https://programmers.co.kr/learn/courses/30/lessons/59408)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/f5f7153e8c4c4763a1d9cdc654bc4138)

동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/08845308ea2e471884f496520a9de20c)

보호소에 들어온 동물의 이름은 NULL(없음), `*Sam`, `*Sam`, `*Sweetie`입니다. 이 중 NULL과 중복되는 이름을 고려하면, 보호소에 들어온 동물 이름의 수는 2입니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

count

---

2

---

### 무엇

animal_ins 테이블에서 name 컬럼의 개수를 구한다

단 , NULL인 row와 중복되는 name 데이터는 제외해야 한다

### 내가 생각한 풀이 과정

- animal_ins 테이블에서 name 데이터를 조회한다
- name 데이터의 총 개수를 구해야 하므로 COUNT 집계함수를 사용한다
- `COUNT(name)` : 형식으로 사용하게 되면 name 컬럼이 NULL 값인 row 는 제외한 row의 개수를 반환해 준다
- 추가적으로 name 데이터의 중복을 제거해야 하기 때문에 DISTINCT 예약어를 사용해 준다

```sql
SELECT COUNT(DISTINCT name) AS "count"
FROM animal_ins;
```

### 실행 결과

```sql
count
96
```

### 내가 생각한 두번째 풀이 방법

- 서브쿼리와 GROUP BY 집계함수를 사용한 풀이
    - GROUP BY를 사용하여 name 컬럼에 대한 중복을 제거한다
    - name 그룹별 개수를 구한다
    - 이를 FROM 절의 서브쿼리에 넣어준다
- name 컬럼을 기준으로 COUNT 집계함수를 사용하여  총 컬럼의 개수를 카운팅 한다

```sql
SELECT COUNT(a.name) AS "count"
FROM (
    SELECT name , COUNT(name)
    FROM animal_ins
    GROUP BY name
) AS a;
```

### 실행 결과

```sql
count
96
```
