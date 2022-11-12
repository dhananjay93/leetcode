--Tags CTE, self join , RANK 
--https://leetcode.com/problems/find-cumulative-salary-of-an-employee/description/
--beats 55%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT
    e1.id,
    e1.month,
    e1.salary curSalary,
    IFNULL(e2.salary,0) prevSalary,
    IFNULL(e3.salary,0) prev2salary,
    e1.salary + IFNULL(e2.salary,0) + IFNULL(e3.salary,0) AS total,
    RANK() OVER(PARTITION BY id ORDER BY month DESC) rnk
FROM Employee e1
LEFT JOIN Employee e2 ON e1.id = e2.id AND e1.month = e2.month + 1 
LEFT JOIN Employee e3 ON e1.id = e3.id AND e1.month = e3.month + 2 
)
SELECT 
    id,
    month,
    total AS salary 
FROM CTE 
WHERE rnk != 1