`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/a963868aa8e5491389f54c06f8dd70e5)

동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL 문을 작성해주세요. 단, ID는 오름차순 정렬되어야 합니다.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/127ef4c751504b69abdd236b11c91999)

이름이 없는 채로 들어온 동물의 ID는 A368930입니다. 따라서 SQL을 실행하면 다음과 같이 출력되어야 합니다.

ANIMAL_ID

---

A368930

---

무엇

이름이 없는 채로 들어온 동물의 ID 조회

결국 , ANIMAL_INS 테이블에서 name컬럼의 값이 NULL인 row 의 animal_id 컬럼 조회

### 내가 생각한 풀이 과정

- ANIMAL_INS 테이블에서 name 컬럼이 NULL인 row를 조회한다
- row에서 animal_id 컬럼 데이터를 추출한다
- animal_id 컬럼 데이터를 오름차순으로 정렬하여 보여준다

```sql
SELECT animal_id
FROM animal_ins
WHERE name IS NULL;
```

```sql
animal_id
A368930
```




`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/6160095053fe462b9b62f7e18d108ec8)

동물 보호소에 들어온 동물 중, 이름이 있는 동물의 ID를 조회하는 SQL 문을 작성해주세요. 단, ID는 오름차순 정렬되어야 합니다.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/2018b5c8007c4e749b315b2da5f2bada)

이름이 있는 동물의 ID는 A524634와 A465637입니다. 따라서 SQL을 실행하면 다음과 같이 출력되어야 합니다.

ANIMAL_ID

---

A465637

---

A524634

---

무엇:

ANIMAL_INS 테이블에서 이름이 있는 데이터의 동물 ID를 오름차순으로 정렬한다

### 내가 생각한 풀이 과정

- ANIMAL_INS 테이블에서 name 컬럼이 NULL이 아닌 row를 조회한다
- row에서 animal_id 컬럼을 추출한다
- animal_id 컬럼을 오름차순으로 정렬한다

```sql
SELECT animal_id AS "ANIMAL_ID"
FROM animal_ins
WHERE name IS NOT NULL
ORDER BY animal_id ASC;
```

```sql

ANIMAL_ID
A349996
A350276
A350375
A352555
A352713
A352872
A353259
A354540
A354597
A354725
...
...
```



`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/b1050308a3a041a996a59bc4c1716eef)

입양 게시판에 동물 정보를 게시하려 합니다. 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/e1d2223ba5ad4f178cfa6e7349ad70eb)

마지막 줄의 개는 이름이 없기 때문에, 이 개의 이름은 "No name"으로 표시합니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/103108195d1b4caba8b0c88fdd0bd539)

무엇

ANIMAL_INS 테이블에서 생물 종 , 이름 , 성별 및 중성화 여부를 아이디 순으로 조회한다

이름이 없는 동물의 이름은 No name 으로 표시한다

### 내가 생각한 풀이 과정

- animal_ins 테이블에서
    - animal_type , sex_upon_intake 컬럼의 데이터를 조회한다
    - name 컬럼의 경우 조회할 때
        - name 컬럼의 값이 NULL 인 경우 No name으로 표시해 준다
        - 조건을 지정해 줘야 하기 때문에 CASE WHEN THEN 구문을 사용하였다
- 데이터의 정렬조건이 animal_id 기준 오름차순 이기 때문에 ORDER BY ASC 구문을 사용하였다

```sql
SELECT animal_type , CASE
                         WHEN name IS NULL THEN 'No name' ELSE name END AS "NAME",
                         sex_upon_intake
FROM animal_ins
ORDER BY animal_id ASC
```

```sql
animal_type	NAME	sex_upon_intake
Cat	Sugar	Neutered Male
Cat	Jewel	Spayed Female
Cat	Meo	Neutered Male
Dog	Harley	Spayed Female
Cat	Gia	Spayed Female
Dog	Peanutbutter	Neutered Male
Dog	Bj	Neutered Male
Cat	Tux	Neutered Male
...
...
...
```