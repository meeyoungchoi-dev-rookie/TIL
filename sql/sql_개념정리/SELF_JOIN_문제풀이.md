## #1.

Table: `Employee`

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.

```

Write an SQL query to find the employees who earn more than their managers.

Return the result table in **any order**.

The query result format is in the following example.

**Example 1:**

```
Input:
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
Output:
+----------+
| Employee |
+----------+
| Joe      |
+----------+
Explanation: Joe is the only employee who earns more than his manager.
```

출처 :  [https://leetcode.com/problems/employees-earning-more-than-their-managers/](https://leetcode.com/problems/employees-earning-more-than-their-managers/)

목적 : Employee 테이블에서 직원이 메니저 보다 연봉을 많이 받는 경우 해당 직원의 이름을 구한다

### 쿼리를 작성하기 위한 구조도

1. Employee 테이블 안에 직원 id 컬럼과 managerId 컬럼이 들어 있다
2. 이런 경우 self join 을 사용하여 데이터를 붙여서 비교해야 한다
    1. 직원 용으로 사용할 테이블의 alias는 em 으로 하겠다
    2. 매니저 용으로 사용할 테이블의 alias는 manage 로 하겠다
    3. 각 로우에 직원 id와 직원을 담당하고 있는 managerId가 있다
    4. 직원 테이블의 매니저 id와 매니저 테이블의 매니저 id를 비교하여 같은 것을 기준으로 조인한다
        1. 그러면 직원과 직원을 관리하는 매니저 정보가 한 row에 출력된다
        2. 직원테이블에서 직원의 연봉 정보를 가져온다
        3. 매니저 테이블에서 매니저의 연봉 정보를 가져온다
        4. where 절에 직원의 연봉 이 매니저의 연봉 보다 더 큰 경우를 찾기위한 조건을 넣어준다
        5. 매니저 보다 연봉을 많이 받는 직원의 name 컬럼 데이터를 Employee alias를 붙여서 조회 한다
    

```sql

SELECT e1.name AS "Employee"
FROM employee AS em
INNER JOIN employee AS ma 
ON em.managerid = ma.id
WHERE em.salary > ma.salary;
```

## #2.

Table: `Weather`

```
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature on a certain day.

```

Write an SQL query to find all dates' `Id` with higher temperatures compared to its previous dates (yesterday).

Return the result table in **any order**.

The query result format is in the following example.

**Example 1:**

```
Input:
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output:
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation:
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).
```

출처 -  [https://leetcode.com/problems/rising-temperature/](https://leetcode.com/problems/rising-temperature/)

목적:  Weather 테이블에서 어제 날짜의 온도 보다 오늘 날짜의 온도가 더 높을 때의 id 데이터를 조회 한다

### 쿼리를 작성하기 위한 구조도

1. Weather 테이블 안에 날짜 데이터를 사용하여 SELF JOIN을 하면 각 날짜 기준 하루 앞선 날짜를 구할 수 있겠다고 생각했다
2. 과거를 담당할 Weather 테이블의 alias를 yesterday 로 하겠다
3. 오늘을 담당할 Weather 테이블의 alias를 today 로 하겠다
    1. yesterday 테이블에서 recordDate 데이터를 가져온다
    2. 이는 과거 날짜 이다
    3. 과거 날짜에 + 1일 한 날짜가 today 테이블에서 가져온 recordDate 데이터와 같아야 한다
        1. 과거 날짜의 temparature 데이터 보다 + 1일 된 날짜의 temparature 데이터가 더 높으면 
        2. 조회 대상이 된다

### 날짜를 비교하기 위해 시도한 방식

#1.

- recordDate 컬럼에 1을 더해주면 + 1일 만큼 증가된 날짜가 될것이라고 생각했다
- 예시 테이블 데이터에서는 검수가 통과 되었지만
- 실제 테이블 데이터에서는 통과 되지 못했다
- 하지만 Weather 테이블에 데이터가 예시 데이터와 같이 id가 증가될수록 날짜도 하루씩 증가되는 구조를 갖고 있지 않았기 때문이다

```sql
SELECT today.id AS id
FROM weather AS yesterday
INNER JOIN weather AS today
ON yesterday.recordDate + 1 = today.recordDate 
WHERE yesterday.temperature < today.temperature;
```

#2.

- 날짜를 가져와서 날짜에 하루를 더해주는 방법으로 DATE_ADD 함수를 적용해 보았다
- DATE_ADD(날짜 ,  INTERVAL 1일) 하게 되면 날짜를 기준으로 1일 증가된 날짜를 얻을 수 있다
- 1일 증가된 날짜와 today 테이블에서 가져온 recoredDate 의 값이 같으면
- 어제 날짜기준 1일 증가된 날짜라는 것이 판정된다
    - 어제 날짜의 temperature 데이터 보다 오늘 날짜의 temperature 데이터가 더 높은 row의 오늘 날짜 id를 조회한다

```sql
SELECT today.id AS id
FROM weather AS yesterday
INNER JOIN weather AS today
ON DATE_ADD(yesterday.recordDate , INTERVAL 1 DAY)  = today.recordDate 
WHERE yesterday.temperature < today.temperature;

```

[MySQL 시간 더하기  , 빼기 함수](https://www.notion.so/MySQL-7eb332d6073b4875ab844a422c1fd42b)