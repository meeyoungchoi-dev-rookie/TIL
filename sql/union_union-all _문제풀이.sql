You are given a table, *Functions*, containing two columns: *X* and *Y*.

![https://s3.amazonaws.com/hr-challenge-images/12892/1443818798-51909e977d-1.png](https://s3.amazonaws.com/hr-challenge-images/12892/1443818798-51909e977d-1.png)

Two pairs *(X1, Y1)* and *(X2, Y2)* are said to be *symmetric* *pairs* if *X1 = Y2* and *X2 = Y1*.

Write a query to output all such *symmetric* *pairs* in ascending order by the value of *X*. List the rows such that *X1 ≤ Y1*.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/12892/1443818693-b384c24e35-2.png](https://s3.amazonaws.com/hr-challenge-images/12892/1443818693-b384c24e35-2.png)

**Sample Output**

```
20 20
20 21
22 23
```

출처 : [https://www.hackerrank.com/challenges/symmetric-pairs/problem?h_r=internal-search](https://www.hackerrank.com/challenges/symmetric-pairs/problem?h_r=internal-search)

x1 = y2 AND x2 = y1

x와 y가 같은 값을 갖는 쌍 출력

x와 y가 다른 경우

x1 ≤ y1 인 경우 출력

1. x와y가 같은 값을 갖는경우 중복을 제거하고 하나의 로우만 출력
    1. 조건: 같은 값을 갖는 로우의 개수가 두개 있어야 한다
        1. x와 y 가 같은 값을 가질 경우를 조회해야 한다
        2. x 와 y가 같은 쌍이 여러개 인 경우 중복을 제거 해야 한다
        3. 따라서 group by를 사용한다
        4. 그러면 x가 같은 기준으로 한번 묶고 그 안에서 y가 같은 기준으로 한번더 묶는다
        5. 문제에서 조건이 x와 y가 같은 값인 로우의 개수가 2개 여야 하기 때문에 HAVING에 로우의 개수가 2것들만 뽑겠다는 조건을 만들어 준다
            1. 이를 위해 count 함수를 사용하여 직접 로우의 개수들을 확인했다
            
            ```sql
            SELECT x , y , COUNT(*)
            FROM functions
            WHERE x = y
            GROUP BY x , y
            ```
            
    
    ```sql
    SELECT x , y
    FROM functions
    WHERE x = y
    GROUP BY x , y
    HAVING count(*) = 2
    ```