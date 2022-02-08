출처

[https://programmers.co.kr/learn/courses/30/lessons/59046](https://programmers.co.kr/learn/courses/30/lessons/59046)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/8c95204367384054b7a75eab07ba0382)

동물 보호소에 들어온 동물 중 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인 동물의 아이디와 이름, 성별 및 중성화 여부를 조회하는 SQL 문을 작성해주세요.

### 예시

이때 결과는 아이디 순으로 조회해주세요. 예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/a1cd33a55f6c49b58de099db5776f9ef)

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/d5117befd8724838a9dc60e5c733fba5)

무엇:

animal_ins 테이블에서 name 컬럼의 값이

Lucy , Ella ,  Pickle,  Rogan , Sabrina ,  Mitty

중 이름을 갖는 row의 name 데이터를 추출한다

### 내가 생각한 풀이 과정

- WHERE 절에 IN 함수를 사용하여
- 문제에서 조건으로 준 이름을 넣어준다
- IN함수는 OR 조건을 간략하게 표현해 준다

```sql
SELECT animal_id , name , sex_upon_intake 
FROM animal_ins
WHERE name IN ('Lucy', 'Ella', 'Pickle', 'Rogan' , 'Sabrina', 'Mitty')
ORDER BY animal_id ASC;
```

```sql
animal_id	name	sex_upon_intake
A373219	Ella	Spayed Female
A377750	Lucy	Spayed Female
A380009	Pickle	Spayed Female
A395451	Rogan	Neutered Male
A399421	Lucy	Spayed Female
A400680	Lucy	Spayed Female
A406756	Sabrina	Spayed Female
A410684	Mitty	Spayed Female
```





츨처

[https://programmers.co.kr/learn/courses/30/lessons/59047](https://programmers.co.kr/learn/courses/30/lessons/59047)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/c7bbcfd216db42e9b88a103cfb573a2b)

보호소에 돌아가신 할머니가 기르던 개를 찾는 사람이 찾아왔습니다. 이 사람이 말하길 할머니가 기르던 개는 이름에 'el'이 들어간다고 합니다. 동물 보호소에 들어온 동물 이름 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 이름 순으로 조회해주세요. 단, 이름의 대소문자는 구분하지 않습니다.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/2776bade24344258bb3c8b0dc4aeb476)

- 이름에 'el'이 들어가는 동물은 Elijah, Ella, Maxwell 2입니다.
- 이 중, 개는 Elijah, Maxwell 2입니다.

따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/9c4d96d715304941beac50843502e460)

무엇

animal_ins 테이블에서 name 컬럼의 데이터중 el 문자를 포함하고 있는 row의 name 데이터를 추출한다

또한 동물 종류가 Dog 여야 한다

### 내가 생각한 풀이 과정

- WHERE 절에 LIKE 구문을 사용하여 문자열 데이터 사이에 el이 들어가 있는 지 여부를 판단해준다
- 그리고 문제에서 동물의 종류가 Dog 라고 했으므로
- animal_type 컬럼의 값이 Dog인지 확인하는 조건도 넣어준다

```sql
SELECT animal_id , name
FROM animal_ins
WHERE name LIKE '%el%' AND animal_type = 'Dog'
ORDER BY name ASC;
```

 

```sql
animal_id	name
A355753	Elijah
A382192	Maxwell 2
A391858	Nellie
A414198	Shelly
```