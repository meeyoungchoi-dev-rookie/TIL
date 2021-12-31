-- 집계함수 문제풀이

-- Query the average population of all cities in CITY where District is California.
-- city 테이블에서 district 컬럼의 california인 데이터들의 population 컬럼 값의 평균을 구한다

-- 풀이방법1.
SELECT AVG(population)
FROM city
WHERE district = 'california';

-- 풀이방법2.
SELECT AVG(population)
FROM city
WHERE district = 'california';

-- Query the total population of all cities in CITY where District is California.
-- city 테이블에서 district 컬럼 값이 california 인 row 중 population 컬럼 값의 합계를 구한다

SELECT SUM(population)
FROM city
WHERE district = 'california';


-- Query a count of the number of cities in CITY having a Population larger than 1000,000.
-- city 테이블에서 population 컬럼의 컬럼 값이 100,000 이상인 row 들이 총 개수를 구한다
-- 단 , population 컬럼 값에 null이 들어있는 경우도 포함된다

SELECT COUNT(*)
FROM city
WHERE population > 100000;


-- Query the average population for all cities in CITY, rounded down to the nearest integer.
-- rounded down : 버림
-- FLOOR 함수를 사용하여 소숫점 이하를 버려준다

SELECT FLOOR(AVG(population))
FROM city;


-- Query the difference between the maximum and minimum populations in CITY.
-- city 테이블에서 population 컬럼의 최대값과 최솟값의 차이를 구한다

SELECT MAX(population) - MIN(population)
FROM city;


-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- city 테이블에서 CITY 컬럼의 로우의 개수 와
-- CITY 컬럼의 중복 값을 제거한 로우 개수의 차이를 구한다

SELECT COUNT(city) - COUNT(DISTINCT city) 
FROM station;