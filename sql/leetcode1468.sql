--Tags WINDOW FUNCTION, CTE
--https://leetcode.com/problems/calculate-salaries/
--beats 76%
--Write your MySQL query statement below

WITH max_salary AS
(
    SELECT
        company_id,
        employee_id,
        employee_name,
        salary,
        MAX(salary) OVER(PARTITION BY company_id) as max_salary
    FROM Salaries 
)
SELECT
    company_id,
    employee_id,
    employee_name,
    ROUND(CASE WHEN max_salary BETWEEN 1000 AND 10000 THEN salary - 0.24*salary
    WHEN max_salary > 10000 THEN salary - 0.49*salary
    ELSE salary
    END) AS salary
FROM max_salary