--Tags CTE, SUBQUERY
--https://leetcode.com/problems/primary-department-for-each-employee/
--beats 92%
--Write your MySQL query statement below

WITH Y AS
(
    SELECT 
        employee_id,
        department_id
    FROM Employee
    WHERE primary_flag = 'Y'
)
SELECT 
    employee_id,
    department_id
FROM Employee
WHERE primary_flag = 'N' AND employee_id NOT IN (SELECT employee_id FROM Y)
UNION ALL
SELECT * FROM Y