출처

[https://programmers.co.kr/learn/courses/30/lessons/59042](https://programmers.co.kr/learn/courses/30/lessons/59042)

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/7ee52ecff4a44d598473c7d30d97a2ef)

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다. `ANIMAL_OUTS` 테이블의 `ANIMAL_ID`는 `ANIMAL_INS`의 `ANIMAL_ID`의 외래 키입니다.

[제목 없음](https://www.notion.so/56d122d1e13d4f8fa31296da908ae590)

천재지변으로 인해 일부 데이터가 유실되었습니다. 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

### 예시

예를 들어, `ANIMAL_INS` 테이블과 `ANIMAL_OUTS` 테이블이 다음과 같다면

`ANIMAL_INS`

[제목 없음](https://www.notion.so/96f476a8b73e41138bb2d0e84236d876)

`ANIMAL_OUTS`

[제목 없음](https://www.notion.so/2ae0fd77ad6c4b40871e4a15c36f7168)

`ANIMAL_OUTS` 테이블에서

- Allie의 ID는 `ANIMAL_INS`에 없으므로, Allie의 데이터는 유실되었습니다.
- Gia의 ID는 `ANIMAL_INS`에 있으므로, Gia의 데이터는 유실되지 않았습니다.
- Spice의 ID는 `ANIMAL_INS`에 없으므로, Spice의 데이터는 유실되었습니다.

따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/4160521482994ceeaf8dff14da72b099)

무엇

입양간 기록은 있는데 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회한다

즉 , ANIMLA_INS 테이블에는 데이터가 있지만 ANIMAL_OUTS 테이블에는 없는 동물의 ID와 이름을 ID 순으로 정렬한다

### 내가 생각한 풀이 과정

- 입양 간 기록은 있지만 입양 들어온 기록은 없다
- ANIMAL_OUTS 테이블에는 데이터가 있지만 ANIMAL_INS 테이블에는 데이터가 없다
- LEFT JOIN을 사용해 보았다
    - 왼쪽테이블에는 데이터가 있지만 오른쪽 테이블에 데이터가 없는 경우까지 같이 보고 싶은 경우 LEFT JOIN을 사용한다
- 두개의 테이블을 animal_id 컬럼이 같은 값을 갖는 경우를 기준으로 조인했다
- 우리가 찾아야 하는 데이터는 ANIMAL_INS 테이블에는 없는 데이터를 찾아야 하므로
- WHERE 구문을 사용하여
    - ANIMAL_INS 테이블의 animal_id 컬럼에 대한 NULL 조건을 확인하는 명령을 넣어줬다

```sql
SELECT ANIMAL_OUTS.animal_id , ANIMAL_OUTS.name
FROM ANIMAL_OUTS LEFT JOIN ANIMAL_INS
ON ANIMAL_OUTS.animal_id = ANIMAL_INS.animal_id
WHERE ANIMAL_INS.animal_id IS NULL;
```

```sql
animal_id	name
A349480	Daisy
A349733	Allie
A349990	Spice
A362137	*Darcy
```





출처:

[https://programmers.co.kr/learn/courses/30/lessons/59043](https://programmers.co.kr/learn/courses/30/lessons/59043)

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/86ab8263ecf843798af67a4f80f3c137)

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다. `ANIMAL_OUTS` 테이블의 `ANIMAL_ID`는 `ANIMAL_INS`의 `ANIMAL_ID`의 외래 키입니다.

[제목 없음](https://www.notion.so/4908d49cc6234b8a82586852cfd16cf8)

관리자의 실수로 일부 동물의 입양일이 잘못 입력되었습니다. 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 시작일이 빠른 순으로 조회해야합니다.

### 예시

예를 들어, `ANIMAL_INS` 테이블과 `ANIMAL_OUTS` 테이블이 다음과 같다면

`ANIMAL_INS`

[제목 없음](https://www.notion.so/6b2fc007fda940ca991a9879dec1003d)

`ANIMAL_OUTS`

[제목 없음](https://www.notion.so/6d795c2cba1d483cb1b567eff72cd016)

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/2d83258eb2a54241a8f334078427aba2)

무엇

보호 시작일 보다 입양일이 더 빠른 동물의 아이디와 이름을 조회한다

즉 , ANIMLA_OUTS 테이블의 datetime 컬럼의 날짜 값이 ANIMAL_INS 테이블의 datetime 컬럼의 날짜 값보다 더 빠른 경우 에 해당하는 row의 데이터를 추출한다

### 내가 생각한 풀이 과정

- animal_id 컬럼 데이터는 양쪽 테이블 전부 똑같이 같고 있다
- 따라서 inner join 을 사용했다
- 조인 조건으로 animal_id 컬럼을 사용하였다
- 문제에서 입양일이 보호시작일 보다 더 빨라야 한다
- 라고 했으므로
    - ANIMAL_OUTS 테이블의 datetime 컬럼의 날짜 값이 더 빨라야 한다
    - ANIMAL_INS 테이블의 datetime 컬럼의 날짜 값보다
    - 이를 WHERE 절에 조건으로 넣어줬다
- 데이터 정렬시 보호시작 날짜 기준 오름차순으로 정렬하라고 했기 때문에
    - animal_ins 테이블의 datetime 컬럼을 오름차순으로 정렬한다
    - order by ASC 구문을 사용한다

```sql
select animal_outs.animal_id, animal_outs.name
from animal_ins  inner join animal_outs 
ON animal_ins.animal_id = animal_outs.animal_id
WHERE animal_ins.datetime > animal_outs.datetime
```

```sql
animal_id	name
A362383	*Morado
A381217	Cherokee
```


출처

[https://programmers.co.kr/learn/courses/30/lessons/59044](https://programmers.co.kr/learn/courses/30/lessons/59044)

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/1195c5c53349407da9f4105d54fcfaeb)

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다. `ANIMAL_OUTS` 테이블의 `ANIMAL_ID`는 `ANIMAL_INS`의 `ANIMAL_ID`의 외래 키입니다.

[제목 없음](https://www.notion.so/3b9343c8cd344f6a8433d6ecd3cc16ec)

아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 시작일 순으로 조회해야 합니다.

### 예시

예를 들어, `ANIMAL_INS` 테이블과 `ANIMAL_OUTS` 테이블이 다음과 같다면

`ANIMAL_INS`

[제목 없음](https://www.notion.so/d8fe826aca6c4939ac73c0d9b60dc5e9)

`ANIMAL_OUTS`

[제목 없음](https://www.notion.so/24b3f1e540724d99932505ed95539f3c)

SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/ceb4146ca7a2445980f04a496c207f55)

무엇

입양을 가지 못한 동물중 가장 오래 보호소에 있던 동물 3마리의 이름과 보호 시작일을 조회한다

보호 시작일 순으로 조회한다

### 내가 생각한 풀이 과정

- 입양을 가지 못했다
    - animal_outs 테이블에 데이터가 없다
    - LEFT JOIN
    - 양쪽 테이블 전부 공통으로 animal_id 컬럼을 갖고 있다
    - 따라서 조인 조건으로 animal_id 컬럼을 사용하였다
    - 입양을 가지 못했으므로 animal_outs 테이블에는 animal_id 컬럼 데이터가 없을 것이다
    - 따라서 , where 조건에 animal_outs 테이블의 animal_id 컬럼이 NULL 인지 확인하는 구문을 넣어줬다
    - 또한 가장 오래 보호중인 동물을 기준으로 정렬해야 하므로
    - ORDER BY를 사용하여 animal_ins 테이블의 datetime 컬럼을 기준으로 오름차순으로 정렬해줬다
    - 가장 오래 보호중인 동물 3마리를 추출해야 하므로 LIMIT 3 을 줬다

```sql
SELECT i.NAME AS "NAME" , i.DATETIME AS "DATETIME"
FROM ANIMAL_INS AS i LEFT JOIN ANIMAL_OUTS AS o
ON i.animal_id = o.animal_id
WHERE o.animal_id IS NULL
ORDER BY i.datetime ASC
LIMIT 3;
```

```sql
NAME	DATETIME
Shelly	2015-01-29 15:01:00
Jackie	2016-01-03 16:25:00
Benji	2016-04-19 13:28:00
```


출처

[https://programmers.co.kr/learn/courses/30/lessons/59045](https://programmers.co.kr/learn/courses/30/lessons/59045)

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/b0d6d4a5c3ad4d27a713e0bd8ce22f9c)

`ANIMAL_OUTS` 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. `ANIMAL_OUTS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `NAME`, `SEX_UPON_OUTCOME`는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다. `ANIMAL_OUTS` 테이블의 `ANIMAL_ID`는 `ANIMAL_INS`의 `ANIMAL_ID`의 외래 키입니다.

[제목 없음](https://www.notion.so/7537d7e10a26486799cb54e31d15e6cd)

보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 보호소에 들어올 당시에는 중성화[1](https://programmers.co.kr/learn/courses/30/lessons/59045#fn1)되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.

### 예시

예를 들어, `ANIMAL_INS` 테이블과 `ANIMAL_OUTS` 테이블이 다음과 같다면

`ANIMAL_INS`

[제목 없음](https://www.notion.so/aad1f3173cc74fea834453fe60cd12fa)

`ANIMAL_OUTS`

[제목 없음](https://www.notion.so/21031eba50214333b9b6b7c4df6fd8fe)

- Cookie는 보호소에 들어올 당시에 이미 중성화되어있었습니다.
- Maxwell 2는 보호소에 들어온 후 중성화되었습니다.
- Kaila는 보호소에 들어올 당시에 이미 중성화되어있었습니다.
- Chewy는 보호소에 들어온 후 중성화되었습니다.

따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/d6d4a9d8b4804f7ab337bdf04d49a29f)

무엇

보호소에 들어올때는 중성화가 되어 있지 않았지만

보호소에서 나갈때는 중성화가 되어있는 동물의 아이디 , 생물 종 , 이름을 동물의 아이디 순으로 정렬한다

### 내가 생각한 풀이 과정

- 두개의 테이블이 animal_id 컬럼을 공통으로 가진다
- 따라서 조인 조건을 animal_id 컬럼을 사용했다
- 보호소에 들어올때 중성화 여부와 보호소에서 나갈때 중성화 여부가 달라야 한다
- 왜?
- 문제에서 보호소에 들어올때는 중성화 되어있지 않았지만
- 보호소에서 나깔때는 중성화가 되어있는 동물의 데이터를 추출하라고 했기 때문이다
- 따라서 WHERE 절에
- 조건을 ANIMAL_INS 테이블의 중성화 컬럼의 값과 ANIMAL_OUTS 테이블의 중성화 컬럼의 값이 다른 경우를 조건으로 지정해 줬다
- 또한 동물의 id를 기준으로 오름차순 정렬하라고 했으므로 ORDER BY ASC 구문을 사용한다

```sql
SELECT o.animal_id , o.animal_type , o.name
FROM ANIMAL_INS AS i INNER JOIN ANIMAL_OUTS AS o
ON i.animal_id = o.animal_id
WHERE i.SEX_UPON_INTAKE <> o.SEX_UPON_OUTCOME
ORDER BY o.animal_id ASC;
```

```sql
animal_id	animal_type	name
A382192	Dog	Maxwell 2
A410330	Dog	Chewy
```