-- city 테이블과 country 테이블을 countrycode와 code 컬럼을 기준으로 조인하여 
-- continent 컬럼의 값이 Africa 인 row의 name을 city 테이블에서 구한다
SELECT city.name
FROM city
INNER JOIN country
ON city.countrycode = country.code AND country.continent = 'Africa';

SELECT city.name
FROM city
INNER JOIN country
ON city.countrycode = country.code 
WHERE country.continent = 'Africa';



-- city 테이블과 country 테이블을 조인한다
-- city 테이블의 continent 컬럼의 값이 `Asia` 인 row들의 population의 합을 구한다
SELECT SUM(city.population)
FROM city 
INNER JOIN country
ON city.countrycode = country.code
WHERE country.continent = 'Asia';


-- 목적 : city 테이블과 country 테이블을 조인한다
-- 조인 조건은 city 테이블의 contrycode과 contry 테이블의 code 컬럼 이다
-- country 테이블의 continent 컬럼의 값을 대상으로
-- 각 continent의 평균 인구수를 city 테이블의 population 컬럼을 사용하여 구한다
SELECT country.continent , FLOOR(AVG(city.population))
FROM city
INNER JOIN country
ON city.countrycode = country.code
GROUP BY country.continent;
