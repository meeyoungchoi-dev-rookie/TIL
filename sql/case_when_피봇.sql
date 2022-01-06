-- 세로로 되어 있는 데이터를 가로로 펼쳐서 보고싶은 경우

-- - categoryid가 1번 일경우 price를 출력하고
-- 아닌 경우 NULL을 출력한다
SELECT * , CASE 
                WHEN categoryid = 1 THEN price 
                ELSE NULL 
            END AS 'category1_price'

FROM Products;


-- 카테고리 아이디별 평균 가격을 가로로 보고싶은 경우
SELECT 
			AVG(CASE WHEN categoryid = 1 THEN price ELSE NULL END) AS 'category1_price' ,
			AVG(CASE WHEN categoryid = 2 THEN price ELSE NULL END) AS 'category2_price' ,
			AVG(CASE WHEN categoryid = 3 THEN price ELSE NULL END) AS 'category3_price'
FROM Products;