-- 목적 : 공급자ID 별 평균 가격을 구하려고 한다
-- GROUP BY에는 그룹지을 컬럼명을 적어준다
SELECT supplierID , AVG(price)
FROM products
GROUP BY supplierID;

-- GROUP BY 구문에 그룹지을 컬럼명을 여러개 지정할 수도 있다
-- 그룹이 계속 세분화 된다
SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid;

-- GROUP BY 절에 숫자를 사용할 수 있다
SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid;

-- 목적 : 공급자의 제품별 평균가격을 오름차순으로 정렬하겠다
SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid
ORDER BY AVG(price);

-- supplierID 컬럼과 categoryid 컬럼으로 묶인 그룹으로 묶을때
-- 평균가격이 100$ 이상인 데이터만 묶겟다고 기준을 정한다
SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid
HAVING AVG(price) >= 100
ORDER BY AVG(price);