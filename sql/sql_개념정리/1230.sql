-- order by

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name
FROM employee
ORDER by name ASC;


-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000  per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;


-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name , 3) , ID ASC;


SELECT name
FROM students
WHERE marks > 75
ORDER BY SUBSTR(name , -3) , ID ASC;


-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
SELECT ROUND(long_w , 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;