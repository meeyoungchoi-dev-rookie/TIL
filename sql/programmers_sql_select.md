출처 :  [https://programmers.co.kr/learn/courses/30/lessons/59034](https://programmers.co.kr/learn/courses/30/lessons/59034)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/476ab001b61e4acb846254b462a45d31)

동물 보호소에 들어온 모든 동물의 정보를 ANIMAL_ID순으로 조회하는 SQL문을 작성해주세요. SQL을 실행하면 다음과 같이 출력되어야 합니다.

[제목 없음](https://www.notion.so/fc94adbd8cd9447eb3c9f94565800930)

목적: 

동물 보호소에 들어온 모든 동물의 정보를 ANIMAL_ID 오름차순으로 조회

### 나의 풀이 과정

- animal_id 커럼을 기준으로 오름차순 정렬을 하기위해 ORDER BY 를 사용한다

```sql
SELECT *
FROM animal_ins
ORDER BY animal_id;
```

결과

```sql
A412697	Dog	2016-01-03 16:25:00	Normal	Jackie	Neutered Male
A413789	Dog	2016-04-19 13:28:00	Normal	Benji	Spayed Female
A414198	Dog	2015-01-29 15:01:00	Normal	Shelly	Spayed Female
A414513	Dog	2016-06-07 09:17:00	Normal	Rocky	Neutered Male
```





출처 : [https://programmers.co.kr/learn/courses/30/lessons/59035](https://programmers.co.kr/learn/courses/30/lessons/59035)

### **문제 설명**

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/f09e3baec29a4be3b95221f3c7424720)

동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 이때 결과는 ANIMAL_ID 역순으로 보여주세요. SQL을 실행하면 다음과 같이 출력되어야 합니다.

[제목 없음](https://www.notion.so/70ddf7ee9ba6487d90bff2c0be09fac4)

목적:

ANIMAL_INS 테이블에서 동물의 이름과 보호 시작일을 조회한다

ANIMAL_ID 컬럼의 역순으로 데이터를 출력한다

### 나의 풀이 과정

- name 컬럼과 datetime 컬럼을 조회한다
- animal_id 컬럼의 데이터를 내림차순으로 정렬하기 위해 DESC 를 사용하였다

```sql
SELECT name , datetime
FROM animal_ins
ORDER BY animal_id DESC;
```

결과

```sql
name	datetime
Rocky	2016-06-07 09:17:00
Shelly	2015-01-29 15:01:00
Benji	2016-04-19 13:28:00
Jackie	2016-01-03 16:25:00
*Sam	2016-03-13 11:17:00
Jimminee	2015-07-28 18:17:00
Mitty	2014-06-21 12:25:00
Raven	2015-11-19 13:41:00
Chewy	2016-09-11 14:09:00
Stanley	2016-04-02 11:36:00
Lizzie	2014-12-25 12:02:00
Jake	2016-10-18 11:01:00
Sabrina	2016-05-12 20:23:00
Kaila	2014-05-16 14:17:00
Anna	2013-11-18 17:03:00
Lucy	2017-06-17 13:29:00
Reggie	2016-10-04 20:31:00
Jack	2013-10-14 15:38:00
Lucy	2015-08-25 14:08:00
Charlie	2017-07-12 14:43:00
Raven	2016-08-22 16:13:00
Rogan	2015-12-27 17:42:00
Snickerdoodl	2015-01-24 16:14:00
Chip	2015-07-26 11:39:00
Skips	2013-11-20 13:09:00
Penny	2014-01-31 13:46:00
Nellie	2017-03-16 16:53:00
Rome	2016-04-06 15:53:00
Holly	2013-12-08 17:04:00
Blaze	2015-11-27 15:59:00
Spider	2015-12-25 10:13:00
Dakota	2014-06-25 16:58:00
Goldie	2014-02-01 18:36:00
Punch	2015-08-17 12:55:00
Tiko	2015-12-19 12:52:00
Giovanni	2015-09-25 18:17:00
Clyde	2014-01-11 15:15:00
Jedi	2014-12-13 15:19:00
Jj	2014-07-04 01:55:00
Finney	2017-02-05 12:27:00
Oreo	2014-05-29 12:31:00
Princess	2014-11-08 16:14:00
Maxwell 2	2015-03-13 13:14:00
Cherokee	2017-07-08 09:41:00
Pepper	2014-08-06 12:07:00
Ruby	2016-01-22 17:13:00
Laika	2017-08-04 16:45:00
Scooby	2014-02-03 12:41:00
Pickle	2016-02-01 14:35:00
Disciple	2013-10-23 11:42:00
Mercedes	2017-09-28 13:36:00
Zoe	2014-07-05 07:13:00
Lyla	2014-08-02 11:23:00
Frijolito	2014-01-25 14:38:00
Lucy	2017-10-25 17:17:00
Dora	2017-07-09 07:42:00
Mama Dog	2014-02-18 12:24:00
Dash	2015-06-12 12:47:00
Rosie	2014-03-20 12:31:00
Ella	2014-07-29 11:43:00
April	2016-06-07 17:42:00
Sailor	2015-05-11 12:33:00
Ceballo	2015-08-03 09:09:00
Greg	2015-07-29 16:07:00
Katie	2013-11-03 15:04:00
Emily	2014-10-27 14:43:00
Sniket	2016-06-25 11:46:00
2014-06-08 13:20:00
Stormy	2018-02-03 10:40:00
Woody	2014-10-19 14:49:00
Cookie	2015-09-10 16:01:00
Miller	2015-09-16 09:06:00
Minnie	2017-01-08 16:34:00
Diablo	2014-08-26 12:53:00
Hugo	2015-09-28 16:26:00
Goofy	2014-11-17 17:39:00
Honey	2014-06-08 18:19:00
Girly Girl	2016-01-27 12:27:00
*Morado	2016-04-21 08:19:00
Stitch	2014-11-18 21:20:00
Baby Bear	2015-03-30 11:36:00
Simba	2015-09-14 16:52:00
Fuzzo	2015-02-06 12:12:00
Happy	2016-03-17 14:09:00
Puppy	2016-03-11 15:43:00
Queens	2014-12-03 15:15:00
Elijah	2015-09-10 13:14:00
Shadow	2014-01-26 13:48:00
Faith	2015-05-08 18:34:00
Sammy	2017-04-21 11:33:00
Kia	2015-08-26 11:51:00
Ariel	2014-05-02 12:16:00
Tux	2014-12-11 11:48:00
Bj	2016-05-08 12:57:00
Peanutbutter	2015-07-09 17:51:00
Gia	2017-04-13 16:29:00
Harley	2014-08-08 04:20:00
Meo	2017-03-06 15:01:00
Jewel	2017-08-13 13:50:00
Sugar	2018-01-22 14:32:00
```




출처: [https://programmers.co.kr/learn/courses/30/lessons/59036](https://programmers.co.kr/learn/courses/30/lessons/59036)

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/11b5b0c8bed240fa9c939eea3b1b6738)

동물 보호소에 들어온 동물 중 아픈 동물[1](https://programmers.co.kr/learn/courses/30/lessons/59036#fn1)의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 아이디 순으로 조회해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/fd0870a053b142aa8a06fa096dd16804)

이 중 아픈 동물은 Miller와 Cherokee입니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/cd5d8ae2a0574c599be6a7a7c61e8870)

목적

동물 보호소에 들어온 동물 중 아픈 동물의 아이디와 이름을 조회

### 나의 풀이 과정

- intatake_condition 컬럼의 값이 Sick 인 데이터만 출력하겠다
- WHERE 절에 조건을 넣어준다

```sql
SELECT animal_id , name
FROM animal_ins
WHERE intake_condition = "Sick";
```

실행 결과

```sql

animal_id	name
A362707	Girly Girl
A367012	Miller
A381217	Cherokee
A387965	Dakota
A388360	Spider
A410330	Chewy
```



`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. `ANIMAL_INS` 테이블 구조는 다음과 같으며, `ANIMAL_ID`, `ANIMAL_TYPE`, `DATETIME`, `INTAKE_CONDITION`, `NAME`, `SEX_UPON_INTAKE`는 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

[제목 없음](https://www.notion.so/950ff0d1132f4f4cb2c100462f1af6a9)

동물 보호소에 들어온 동물 중 젊은 동물[1](https://programmers.co.kr/learn/courses/30/lessons/59037#fn1)의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 아이디순으로 조회해주세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면

[제목 없음](https://www.notion.so/baad157363ad43f6b1e65373c413c220)

이 중 젊은 동물은 Diablo, Miller, Cherokee입니다. 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.

[제목 없음](https://www.notion.so/2fa68604a23c48948cd98c4df57339d4)

목적

동물 보호소에 들어온 동물 중 젊은 동물[1](https://programmers.co.kr/learn/courses/30/lessons/59037#fn1)의 아이디와 이름을 조회하는데 아이디는 오름차순으로 조회해야 한다

### 나의 풀이 과정

- intake_condition 컬럼의 값이 “Aged” 가 아닌 경우 젊은 동물이다
- WHERE 절에 조건을 넣어준다
- animal_id를 오름차순으로 정렬해야 하므로  ASC 를 사용한다
- ORDER BY 컬럼명 뒤에 아무것도 적지 않으면 DEFAULT 가 오름차순 정렬이다

```sql
SELECT animal_id , name
FROM animal_ins
WHERE intake_condition <> "Aged"
ORDER BY animal_id;
```

결과

```sql
animal_id	name
A349996	Sugar
A350276	Jewel
A350375	Meo
A352555	Harley
A352713	Gia
A353259	Bj
A354540	Tux
A354597	Ariel
A354725	Kia
A354753	Sammy
A355519	Faith
A355688	Shadow
A355753	Elijah
A357021	Queens
A357444	Puppy
A357846	Happy
A358697	Fuzzo
A358879	Simba
A361391	Baby Bear
A362103	Stitch
A362383	*Morado
A362707	Girly Girl
A362967	Honey
A363653	Goofy
A364429	Hugo
A365172	Diablo
A367012	Miller
A367438	Cookie
A367747	Woody
A368930	
A370439	Sniket
A370507	Emily
A370852	Katie
A371000	Greg
A371102	Ceballo
A371344	Sailor
A371534	April
A373219	Ella
A373687	Rosie
A376322	Mama Dog
A376459	Dora
A377750	Lucy
A378348	Frijolito
A378818	Zoe
A378946	Mercedes
A379998	Disciple
A380009	Pickle
A380320	Scooby
A380420	Laika
A380506	Ruby
A381173	Pepper
A381217	Cherokee
A382192	Maxwell 2
A382251	Princess
A383036	Oreo
A383964	Finney
A384360	Jj
A384568	Jedi
A385442	Clyde
A386005	Giovanni
A386276	Tiko
A387083	Goldie
A387965	Dakota
A388360	Spider
A388691	Blaze
A390222	Holly
A391512	Rome
A391858	Nellie
A392027	Penny
A392075	Skips
A392615	Chip
A394547	Snickerdoodl
A395451	Rogan
A396810	Raven
A397882	Charlie
A399421	Lucy
A399552	Jack
A400498	Reggie
A400680	Lucy
A403564	Anna
A405494	Kaila
A406756	Sabrina
A407156	Jake
A408035	Lizzie
A410330	Chewy
A410668	Raven
A410684	Mitty
A412173	Jimminee
A412626	*Sam
A412697	Jackie
A413789	Benji
A414198	Shelly
A414513	Rocky
```