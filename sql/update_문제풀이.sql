#627

출처 :  [https://leetcode.com/problems/swap-salary/](https://leetcode.com/problems/swap-salary/)

Table: `Salary`

```
+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| id          | int      |
| name        | varchar  |
| sex         | ENUM     |
| salary      | int      |
+-------------+----------+
id is the primary key for this table.
The sex column is ENUM value of type ('m', 'f').
The table contains information about an employee.

```

Write an SQL query to swap all `'f'` and `'m'` values (i.e., change all `'f'` values to `'m'` and vice versa) with a **single update statement** and no intermediate temporary tables.

Note that you must write a single update statement, **do not** write any select statement for this problem.

The query result format is in the following example.

**Example 1:**

```
Input:
Salary table:
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |
+----+------+-----+--------+
Output:
+----+------+-----+--------+
| id | name | sex | salary |
+----+------+-----+--------+
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |
+----+------+-----+--------+
Explanation:
(1, A) and (3, C) were changed from 'm' to 'f'.
(2, B) and (4, D) were changed from 'f' to 'm'.
```

목적

Salary 테이블에서 sex 컬럼의 값이 m인 경우 f로 update

sex 컬럼의 값이 f인 경우 m으로 update

### 나의 풀이과정

- case when then 을 사용하여 sex 컬럼의 값이 f일때 m으로 update 한다
- 그외 나머지 데이터는 f로 update 한다

```sql

UPDATE Salary 
SET sex = 
		CASE WHEN sex = "f" THEN "m" ELSE "f" END;
```

- case when then 구조

```sql
CASE 
	WHEN 조건1 THEN 처리1
  WHEN 조건2 THEN 처리2
  ELSE 처리0
END
```