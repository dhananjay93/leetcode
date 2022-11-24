--Tags CTE, ranks
--https://leetcode.com/problems/report-contiguous-dates/description/
--beats 10%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    fail_date AS date,
    'failed' AS period_state,
    RANK() OVER(ORDER BY fail_date) rnk
FROM Failed 
WHERE fail_date BETWEEN '2019-01-01' AND '2019-12-31'
UNION ALL
SELECT 
    success_date AS date,
    'succeeded' AS period_state,
    RANK() OVER(ORDER BY success_date) rnk
FROM Succeeded  
WHERE success_date BETWEEN '2019-01-01' AND '2019-12-31'
)
SELECT 
    period_state,
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM 
(
SELECT 
    date,
    period_state,
    (CAST(RANK() OVER(ORDER BY date) AS SIGNED) - CAST(rnk AS SIGNED)) grp
FROM CTE
)sb
GROUP BY period_state,grp
ORDER BY start_date