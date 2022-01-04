-- products 컬럼에서 categoryid 컬럼의 값에따라 분기 처리하겠다
SELECT * , CASE
              WHEN categoryid = 1 THEN '음료'
              WHEN categoryid = 2 THEN '조미료'
              ELSE '기타'
       END AS "type"
FROM Products;



-- WHEN 절에 논리연산자를 사용하여 조건을 여러개 줄수 있다
SELECT * , CASE
              WHEN categoryid = 1 AND supplierID = 1 THEN '음료'
              WHEN categoryid = 2 THEN '조미료'
              ELSE '기타'
       END AS "type"
FROM Products;



-- case when end 구문을 alias를 사용하여 별칭을 지정할 수 있다
-- 별칭을 사용하여 group by 절에서 데이터를 그룹화 하는데 사용할 수 있다
-- 즉 , category_id가 1인 그룹 , categoryid가 2인 그룹 , 그외 그룹으로 나뉘게 된다
-- 그룹들의 평균 가격을 집계함수 AVG를 사용하여 구할 수 있다
ELECT * , CASE
              WHEN categoryid = 1 THEN '음료'
              WHEN categoryid = 2 THEN '소스'
              ELSE '이외'
       END AS "new_category" , AVG(price)
FROM Products
GROUP BY new_category