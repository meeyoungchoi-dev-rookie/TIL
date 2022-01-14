`users`

| id | 로그인 아이디 | 주소 |
| --- | --- | --- |
| 1 | A | 광진구 자양동 |
| 2 | B | 송파구 석촌동 |
| 3 | C | 분당구 판교동 |

`orders`

| userId | 구매 상품 | 가격 | 결제수단 |
| --- | --- | --- | --- |
| 1 | 샴푸 | 5000 | 국민카드 |
| 2 | 식빵 | 7000 | 신한카드 |

### Left Join

- 왼쪽 테이블을 기준으로 조인을 하겠다
- 왼쪽 테이블에는 데이터가 있고 오른쪽 테이블에는 데이터가 없을 경우 어떻게 조인을 할것인가
- user와 그 사람들이 주문한 내역을 같이 보고 싶다
- 그런데 한번도 주문하지 않은 사람의 정보도 같이 보고 싶다
- 이때는 users 테이블에는 데이터가 있지만
- orders 테이블에는 데이터가 없는 경우도 커버를 해줘야 한다
- 즉 , users테이블의 3번 고객은 orders 테이블에 주문한 데이터가 없다
- 이때 Left Join 의 경우 주문 정보는 NULL로 표시가 된다
- 이 데이터도 같이 보고싶은 것이다
- 즉 , 왼쪽 테이블을 기준으로 오른쪽테이블의 NULL 인 정보도 같이 보기 위해 사용한다

```sql
SELECT * 
FROM USERS
LEFT JOIN orders
ON users.userid = orders.userid;
```

- users 테이블을 기준으로 조인하겠다
- 조건 : 회원가입도 하고 주문도 한 데이터를 뽑겠다
- 그리고 회원가입은 했지만 주문은 하지않은 사람들의 데이터도 같이 보겠다
- 단 회원가입은 했지만 주문은 하지 않은 고객의 주문 관련 데이터 (orders 테이블에 있는 컬럼 데이터)는 NULL로 표시된다

```sql
SELECT * 
FROM users
LEFT JOIN orders
ON users.userid = orders.userid
WHERE orders.userid IS NULL;
```

- users 테이블을 기준으로 조인 하겠다
- users테이블의 userid 컬럼의 값이 orders 테이블의 userid 컬럼의 값과 같은 데이터를 뽑겠다
- 즉 , 회원이 주문을 한경우 주문정보 데이터를 뽑겠다
- 단 , WHERE 조건에 의해 주문하지 않은 사람들의 데이터만 추출된다

| userId | 구매 상품 | 가격 | 결제수단 |
| --- | --- | --- | --- |
| 1 | 샴푸 | 5000 | 국민카드 |
| 2 | 식빵 | 7000 | 신한카드 |
| 3 | NULL | NULL | NULL |

                                            🔽

                                             🔽

                                             🔽

                                            🔽

| userId | 구매 상품 | 가격 | 결제수단 |
| --- | --- | --- | --- |
| 3 | NULL | NULL | NULL |

- 즉 , 주문하지 않은 사람의 데이터 정보만 남기겠다



```sql
SELECT * FROM TableA A
LEFT JOIN TableB B ON
A.key = B.key
```

- TableA를 기준으로 TableA의 key 컬럼의 값이
- TableB의 key 컬럼에도 있는 경우를 출력하겠다
- 하지만 TableB의 key 컬럼에 값이 없는 경우 NULL로 출력하겠다



```sql
SELECT * 
FROM TableA A 
LEFT JOIN 
TableB B 
ON A.key = B.key 
WHERE B.key IS NULL
```

- TableA를 기준으로 TableB와 조인하겠다
- 조건 : TableA의 key 컬럼의 값이 TableB의 key 컬럼에도 있어야 한다
- 단 , TableA의 key 컬럼의 값이 TableB의 key 컬럼에 없는 경우
- TableB의 데이터만 출력하겠다
- 즉 , TableA에는 있지만 TableB에는 없는 데이터만 출력하겠다

```sql
SELECT *
FROM Customers
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID 
WHERE Orders.CustomerID IS NULL;
```

- 즉 , 회원가입은 했지만 상품을 구매하지 않은 사람의 데이터만 보겠다는 의미이다

### Right Join

- Left Join 과 정 반대이다
- 오른쪽을 기준으로 오른쪽에는 있지만 왼쪽에는 없는 데이터는 NULL로 처리해서 출력하겠다
- 대부분 실무에서는 Left Join 을 많이 쓴다

```sql
SELECT * FROM TableA A
RIGHT JOIN TableB B 
ON A.key = B.key 
WHERE A.key IS NULL
```

- TableB를 기준으로 조인하겠다
- TableB의 key컬럼에는 있지만 TableA의 key 컬럼에는 없는 데이터 중
- TableA에 없는 데이터만 추출하겠다

```sql
SELECT * FROM TableA A
RIGHT JOIN TableB B 
ON A.key = B.key;

```

- TableB를 기준으로 조인하겠다
- TableB의 key 컬럼의 데이터가 TableA의 key 컬럼에 도 있는 경우 전부 출력하겠다
- 그러나 , TableA의 key 컬럼에 데이터가 없는 경우 NULL로 출력하겠다