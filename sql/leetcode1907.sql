--Tags CASE, UNION ALL
--https://leetcode.com/problems/count-salary-categories/
--beats 92%
--Write your MySQL query statement below

WITH base AS
(
    SELECT
    CASE WHEN income < 20000 THEN 1 ELSE 0
        END AS l,
    CASE WHEN income >= 20000 and income <= 50000 THEN 1 ELSE 0
        END AS a,
    CASE WHEN income > 50000 THEN 1 ELSE 0
        END AS h
    FROM Accounts 
)
SELECT 'Low Salary' as category, SUM(l) as accounts_count from base
UNION ALL
SELECT 'Average Salary' as category, SUM(a) as accounts_count from base
UNION ALL
SELECT 'High Salary' as category, SUM(h) as accounts_count from base