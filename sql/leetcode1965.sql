--Tags Union All
--https://leetcode.com/problems/employees-with-missing-information/submissions/
--beats 55%
-- Write your MySQL query statement below
SELECT employee_id 
FROM Employees 
WHERE employee_id 
NOT IN (SELECT employee_id FROM Salaries)
UNION ALL
SELECT employee_id 
FROM Salaries 
WHERE employee_id 
NOT IN (SELECT employee_id FROM Employees)
ORDER BY employee_id ASC