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

Person 테이블에서 email이 중복되는 row를 삭제한다

단 , 중복되지 않는 email은 남기고 

중복되는 row중 id 컬럼의 값이 작은 row는 삭제하지 않는다

### 내가 생각한 풀이 과정

- 중복되는 이메일이 있는 row를 찾는다
    - self join을 사용한다 (Person p1 , Person p2)
    - self join 조건으로 email 컬럼의 값이 같을때를 조건으로 줘서 데이터를 정렬한다
    - id 컬럼의 값이 작은 row만 남겨야 한다
        - 조인된 테이블 데이터에서 id 컬럼의 값이 같은 경우는 남긴다
        - id컬럼의 값이 같지 않으면서 p2의 id 컬럼의 값이 p1의 아이디 컬럼의 값보다 큰 값을 가지는 row의 p2 테이블 데이터를 지운다

```sql
SELECT *
FROM Person p1 INNER JOIN Person p2
ON p1.email = p2.email
WHERE p1.id < p2.id;
```

- email 컬럼을 기준으로 SELEF JOIN 한 경우

| p1.id | p1.email | p2.id | p2.email |
| --- | --- | --- | --- |
| 1 | john@example.com | 1 | john@example.com |
| 1 | john@example.com | 3 | john@example.com |
| 2 | bob@example.com | 2 | bob@example.com |
| 3 | john@example.com | 3 | john@example.com |
| 3 | john@example.com | 1 | john@example.com |

- 문제에서 email이 중복된 row의 경우
- id의 값이 작은 row를 남기라고 했다
- 따라서 p1과 p2 가 둘다 1인 경우는 남긴다
- p1과 p2가 2경우도 남긴다 왜? 이메일이 중복되지 않기 때문
- p1과 p2의 id가 다른 row중 p2의 id가 더 큰 값을 가지는 경우
- p2테이블의 row를 삭제한다

```sql
DELETE p2
FROM Person p1 INNER JOIN Person p2
ON p1.email = p2.email
WHERE p1.id < p2.id;
```

```sql
{"headers": ["id", "email"], 
 "values": [[1, "john@example.com"], 
           [2, "bob@example.com"]]}
```