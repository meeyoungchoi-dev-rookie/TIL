-- We define an employee's total earnings to be their monthly  worked, 
-- and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
-- Write a query to find the maximum total earnings for all employees as well as the total number of employees
-- who have maximum total earnings. Then print these values as  space-separated integers.

-- 직원들의 total earnings = `salary * months` 이다
-- 직원 중 가장 높은 연봉의 액수와 높은 연봉을 받는 사람의 수를 구한다
SELECT (months * salary) AS earnings ,  COUNT(*)
FROM employee
GROUP BY (months * salary)
ORDER BY (months * salary) DESC
LIMIT 1;


-- 1. employee 테이블을 연봉 (months * salary) 그룹으로 묶는다
-- 2. 그러면 같은 연봉을 받는 데이터들끼리 묶이게 된다
-- 3. 예) 5000 / 2명  3000 / 3명 등
-- 4. 가장 높은 연봉을 받는 행의 개수를 COUNT() 를 사용하여 구한다
-- 5. 연봉을 내림차순으로 정렬한다
-- 6. 가장 높은 연봉 데이터가 필요하므로 LIMIT를 사용하여 맨 위의 한 row만 가져온다