-- 삼각형 , 정삼각형 , 이등변삼각형 이 될 조건 구하기
-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 
--Output one of the following statements for each record in the table:
-- Equilateral: It's a triangle with 3 sides of equal length.
-- Isosceles: It's a triangle with 2 sides of equal length.
-- Scalene: It's a triangle with 3 sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

-- 1번 풀이
-- 1. 정삼각형이 될 조건을 먼저 구한다
-- 2. 삼각형이 되지 않을 조건을 구한다
-- 3. 이등변 삼각형이 될 조건을 구한다
-- 4. 삼각형이 될 조건을 구한다
SELECT CASE            
                WHEN A = B AND B = C THEN 'Equilateral'
                WHEN GREATEST(A , B , C) >= A + B THEN 'Not A Triangle'
                WHEN GREATEST(A , B , C) < A + B AND (A = B OR A = C) THEN 'Isosceles'
                WHEN GREATEST(A , B , C) < A + B THEN 'Scalene'
                
        END
FROM triangles


-- 2번 풀이 (어렵게 생각하지 않고 직관적으로)
SELECT  CASE            
                WHEN A = B AND B = C THEN 'Equilateral'
                WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
                WHEN GREATEST(A , B , C) < A + B AND (A = B OR A = C) THEN 'Isosceles'
            ELSE 'Scalene'
             
        END
FROM triangles