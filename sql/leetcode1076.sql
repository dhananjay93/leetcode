--Tags CTE, AGGREGATE, RANK
--https://leetcode.com/problems/project-employees-ii/
--beats 35%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT 
    project_id,
    COUNT(*) COUNTER
FROM Project 
GROUP BY project_id
)
SELECT project_id
FROM
(
SELECT 
project_id,
RANK() OVER(ORDER BY COUNTER DESC) rn
FROM CTE
)sb
WHERE rn = 1