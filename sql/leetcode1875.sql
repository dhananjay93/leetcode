--Tags  DENSE_RANK, SUBQUERY
--https://leetcode.com/problems/the-first-day-of-the-maximum-recorded-degree-in-each-city/
--beats 43%
--Write your MySQL query statement below

SELECT 
    employee_id,
    name,
    salary,
    DENSE_RANK() OVER(ORDER BY salary) team_id
FROM Employees 
WHERE salary IN
(
SELECT salary
FROM
    (
    SELECT 
        salary,
        COUNT(*) AS cn
    FROM Employees
    GROUP BY salary
    HAVING cn > 1
    )sb1
)