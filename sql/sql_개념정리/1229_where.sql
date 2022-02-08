-- where 관련 sql 문제풀이
-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT *
FROM city
WHERE population > 100000 AND countrycode = 'USA';


-- Query all columns for a city in CITY with the ID 1661
SELECT *
FROM city
WHERE id = 1661;

-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA
SELECT name
FROM city
WHERE population > 120000 AND countrycode = 'USA';


-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT distinct city
FROM station
WHERE city LIKE 'a%' or city LIKE 'e%' or city LIKE 'i%' or city LIKE 'o%' or city LIKE 'u%';


-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT distinct city
FROM station
WHERE city LIKE '%a' or city LIKE '%e' or city LIKE '%i' or city LIKE '%o' or city LIKE '%u';


-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT distinct city
FROM station
WHERE city NOT LIKE 'a%' AND city NOT LIKE 'e%' AND city NOT LIKE 'i%' AND city NOT LIKE 'o%' AND city NOT LIKE 'u%' AND city NOT LIKE '%a' AND city NOT LIKE '%e' AND city NOT LIKE '%i' AND city NOT LIKE '%o' AND city NOT LIKE '%u';