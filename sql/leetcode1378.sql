--Tags LEFT JOIN
--https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
--beats 17%
-- Write your MySQL query statement below
SELECT 
    EmployeeUNI.unique_id,
    Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON EmployeeUNI.id = Employees.id