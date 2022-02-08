-- Department table:
-- +------+---------+-------+
-- | id   | revenue | month |
-- +------+---------+-------+
-- | 1    | 8000    | Jan   |
-- | 2    | 9000    | Jan   |
-- | 3    | 10000   | Feb   |
-- | 1    | 7000    | Feb   |
-- | 1    | 6000    | Mar   |
-- +------+---------+-------+

-- +------+-------------+-------------+-------------+-----+-------------+
-- | id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
-- +------+-------------+-------------+-------------+-----+-------------+
-- | 1    | 8000        | 7000        | 6000        | ... | null        |
-- | 2    | 9000        | null        | null        | ... | null        |
-- | 3    | null        | 10000       | null        | ... | null        |
-- +------+-------------+-------------+-------------+-----+-------------+


-- Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.
-- 각 id별 1월 ~ 12월 까지 연봉을 구해야 한다
-- 결과 값을 id별로 가로로 데이터를 보여줘야 한다
SELECT id , 
              
              SUM( CASE WHEN  month = 'JaN' THEN revenue ELSE NULL END )   AS 'Jan_Revenue',
              SUM( CASE WHEN  month = 'Feb' THEN revenue ELSE NULL END )   AS 'Feb_Revenue', 
              SUM( CASE WHEN  month = 'Mar' THEN revenue ELSE NULL END )   AS 'Mar_Revenue',
              SUM( CASE WHEN  month = 'Apr' THEN revenue ELSE NULL END )   AS 'Apr_Revenue',
              SUM( CASE WHEN  month = 'May' THEN revenue ELSE NULL END )   AS 'May_Revenue',
              SUM( CASE WHEN  month = 'Jun' THEN revenue ELSE NULL END )   AS 'Jun_Revenue',
              SUM( CASE WHEN  month = 'Jul' THEN revenue ELSE NULL END )   AS 'Jul_Revenue',
              SUM( CASE WHEN  month = 'Aug' THEN revenue ELSE NULL END )   AS 'Aug_Revenue',
              SUM( CASE WHEN month = 'Sep' THEN revenue  ELSE NULL END )   AS 'Sep_Revenue',
              SUM( CASE WHEN month = 'Oct' THEN revenue  ELSE NULL END )   AS 'Oct_Revenue',
              SUM( CASE WHEN month = 'Nov' THEN revenue ELSE NULL END  )   AS 'Nov_Revenue',
              SUM( CASE WHEN month = 'Dec' THEN revenue ELSE NULL END  )   AS 'Dec_Revenue'
FROM Department
GROUP BY id;