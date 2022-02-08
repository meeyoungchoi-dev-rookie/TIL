Table: `Person`

```
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.

```

Write an SQL query to **delete** all the duplicate emails, keeping only one unique email with the smallest `id`.

Return the result table in **any order**.

The query result format is in the following example.

**Example 1:**

```
Input:
Person table:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |
+----+------------------+
Output:
+----+------------------+
| id | email            |
+----+------------------+
| 1  | john@example.com |
| 2  | bob@example.com  |
+----+------------------+
Explanation: john@example.com is repeated two times. We keep the row with the smallest Id = 1.
```

무엇

Person 테이블에서 email 이 중복되는 데이터중 id 컬럼의 값이 작은 row는 남기고 삭제한다

### 내가 생각한 풀이 과정

- Person 테이블에서 중복된 email 컬럼을 확인하기 위해 GROUP BY를 사용하여 email로 그룹지어준다
- 그룹에서 가장 작은 id를 갖는 row를 추출한다
    - 해당 row는 삭제되면 안되는 row이다
    - 이를 서브쿼리로 묶는다
        - 삭제할때 id 컬럼에 조건을 지정한다
        - id 컬럼이 email 그룹안에서 가장 작은 값은 갖는 경우 삭제하지 못하도록 지정한다
        - 이를 위해 NOT IN 함수를 사용한다
        - `NOT IN`: 특정 값을 만족하지 않는 값들만 조회한다

```sql
DELETE 
FROM Person
WHERE id NOT IN (
    SELECT SUB.MIN(id) 
    FROM (
        SELECT MIN(id) , email
	        FROM Person
		    GROUP BY email

		) SUB
);
```