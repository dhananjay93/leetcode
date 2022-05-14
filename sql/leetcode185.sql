-- Tags Conditioning , dense rank , joins
--https://leetcode.com/problems/department-top-three-salaries/
--Beats 95%
# Write your MySQL query statement below
SELECT T1.Department, T1.Employee, T1.Salary
FROM (
    SELECT Department.name AS "Department", 
       Employee.name AS "Employee" ,
       Employee.salary AS "Salary",
       dense_rank() OVER(PARTITION BY Department.name ORDER BY Employee.salary DESC) AS "RRR"
FROM Employee
LEFT JOIN Department ON Employee.departmentId = Department.id
) AS T1
WHERE T1.RRR<4