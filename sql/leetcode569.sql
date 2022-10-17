--Tags Median salary
--https://leetcode.com/problems/median-employee-salary/description/
--beats 74%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT
    id,
    company,
    salary,
    RANK() OVER(PARTITION BY company ORDER BY salary,id) rnk,
    COUNT(*) OVER(PARTITION BY company) counter
FROM Employee
)
SELECT 
    id,
    company,
    salary
FROM CTE
WHERE CASE WHEN MOD(counter,2) = 0 THEN (rnk = counter/2 OR rnk = (counter/2)+1)
ELSE rnk = floor(counter/2) + 1  END