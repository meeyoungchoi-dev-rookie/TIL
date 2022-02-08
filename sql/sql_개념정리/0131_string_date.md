출처

[https://programmers.co.kr/learn/courses/30/lessons/59409](https://programmers.co.kr/learn/courses/30/lessons/59409)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/75f46ee497e7406daca06b0411a1d3ce)

보호소의 동물이 중성화되었는지 아닌지 파악하려 합니다. 중성화된 동물은 `SEX_UPON_INTAKE` 컬럼에 'Neutered' 또는 'Spayed'라는 단어가 들어있습니다. 동물의 아이디와 이름, 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 이때 중성화가 되어있다면 'O', 아니라면 'X'라고 표시해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/4c5e63020197463abc36be7d21dedcc4)

- 중성화한 동물: Elijah, Ella
- 중성화하지 않은 동물: Maxwell 2

따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/bff5cccbb70d4a86b7a105f1445c641c)

※ 컬럼 이름은 일치하지 않아도 됩니다.

무엇

animal_ins 테이블의 sex_upon_intake 컬럼을 사용하여 동물의 중성화 여부를 체크한다

### 내가 생각한 풀이 과정

- CASE WHEN THEN 구문을 사용하여
- sex_upon_intake 컬럼의 값에 Neutered 가포함되 있으면 중성화 O
- sex_upon_intake 컬럼의 값이 Spayed 가 포함되 있으면 중성화 O
- 이외의 경우 중성화 X

```sql
SELECT animal_id , name ,  CASE
    WHEN sex_upon_intake LIKE '%Neutered%' THEN 'O'
    WHEN sex_upon_intake LIKE '%Spayed%' THEN 'O'
    ELSE 'X'
    END AS "중성화"
    
FROM animal_ins
ORDER BY animal_id ASC;
```

```sql
animal_id	name	중성화
A349996	Sugar	O
A350276	Jewel	O
A350375	Meo	O
...
...
...
```





출처

[https://programmers.co.kr/learn/courses/30/lessons/59411](https://programmers.co.kr/learn/courses/30/lessons/59411)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/10e1ba618c0345ae9316de7ceac1e09f)

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다. `ANIMAL_OUTS` 테이블의 `ANIMAL_ID`는 `ANIMAL_INS`의 `ANIMAL_ID`의 외래 키입니다.

[제목 없음](https://www.notion.so/60a6fb99d31242b39052ed4413cda384)

입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 기간이 긴 순으로 조회해야 합니다.

### 예시

예를 들어, `ANIMAL_INS` 테이블과 `ANIMAL_OUTS` 테이블이 다음과 같다면

`ANIMAL_INS`

[제목 없음](https://www.notion.so/97fbb796393e4266843db2f76280c9dc)

`ANIMAL_OUTS`

[제목 없음](https://www.notion.so/dc937ee57c9b4912b80b8e84406680c2)

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/72c1414f81a14187b24dcf05f06ffaef)

※ 입양을 간 동물이 2마리 이상인 경우만 입력으로 주어집니다.

무엇

보호소에 들어와서 입양을 간 동물 중 보호 기간이 가장 길었던 동물 두마리의 아이디와 이름을 조회한다

단 , 보호 기간이 더 긴 순으로 조회한다

### 내가 생각한 풀이 과정

- 보호소에 들어와서 입양을 갔으므로
- animal_ins 테이블과 animal_outs 테이블을 animal_id를 기준으로 inner join한후
- animal_ins 테이블의 datetime 컬럼에서 animal_outs 테이블의 datetime 컬럼의 값을 뺀다
    - 왜? 얼마나 보호 되었는지 보호 기간을 구하기 위해
    - 보호기간의 값이 큰 순으로 정렬한다
    - 보호기간이 가장 길었던 동물 2마리를 조회하라 하였으므로 LIMIT 구문을 사용한다

```sql
SELECT animal_ins.animal_id , animal_ins.name
FROM animal_ins INNER JOIN animal_outs
ON animal_ins.animal_id = animal_outs.animal_id
ORDER BY  animal_outs.datetime - animal_ins.datetime DESC
LIMIT 2;
```

```sql
animal_id	name
A362707	Girly Girl
A370507	Emily
```





출처

[https://programmers.co.kr/learn/courses/30/lessons/59414](https://programmers.co.kr/learn/courses/30/lessons/59414)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/cd136a33252249f093c5982046ca6f6b)

`ANIMAL_INS` 테이블에 등록된 모든 레코드에 대해, 각 동물의 아이디와 이름, 들어온 날짜[1](https://programmers.co.kr/learn/courses/30/lessons/59414#fn1)를 조회하는 SQL문을 작성해주세요. 이때 결과는 아이디 순으로 조회해야 합니다.

### 예시

예를 들어, `ANIMAL_INS` 테이블이 다음과 같다면

`ANIMAL_INS`

[제목 없음](https://www.notion.so/dbf3d34d805a4e7a9235361d9575c549)

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/8e127411093f47a7a90f66240c63ca1d)

무엇

animal_ins 테이블의 모든 row에 대해 

동물의 아이디 , 이름 , 들어온 날짜를 조회한다

아이디순으로 조회하고 날짜는 yyyy-MM-dd 형식으로 조회한다

### 내가 생각한 풀이 과정

- date_format 함수를 사용하여 datetime 컬럼의 형식을  yyyy-MM-dd 형식으로 바꿔 준다
- `DATE_FORMAT(시간값 , 원하는 포맷)`
    
    
    | %Y | 년도 - Year (4자리 표기) |
    | --- | --- |
    | %y | 년도 (뒤에 2자리 표기) |
    | %M | 월 - 월 이름(January ~ December) |
    | %m | 월 - 월 숫자 (00 ~ 12) |
    | %d | 일(00 ~ 31) |
- 문제에서 년 월 일 형식으로 나오게 하라고 하였으므로

```sql
date_format(datetime , '%Y%m%d');
```

```sql
SELECT animal_id , name , DATE_FORMAT(datetime, '%Y-%m-%d') AS '날짜'
FROM animal_ins
ORDER BY animal_id ASC;
```

```sql
animal_id	name	날짜
A349996	Sugar	2018-01-22
A350276	Jewel	2017-08-13
A350375	Meo	2017-03-06
...
...
...
```
