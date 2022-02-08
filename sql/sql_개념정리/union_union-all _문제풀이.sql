-- 문제 출처 : https://www.hackerrank.com/challenges/symmetric-pairs/problem?h_r=internal-search

-- 목적
-- 1) x와 y가 같은 값을 갖는 쌍 출력
-- 2) x1 = y2 AND x2 = y1
-- x와 y가 다른 경우
-- x1 ≤ y1 인 경우 출력

(
SELECT x , y
FROM functions
GROUP BY x , y
HAVING COUNT(*) = 2
)

UNION

(
SELECT f1.x , f1.y
FROM functions f1
INNER JOIN functions f2
ON f1.x = f2.y AND f2.x = f1.y
WHERE f1.x <> f1.y AND f1.x < f1.y
) 
ORDER BY x;
