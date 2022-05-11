# Write your MySQL query statement below
WITH temp AS
(
    SELECT Department.name AS Department,
    salary, 
    Employee.name AS Employee,
    RANK() over (PARTITION BY departmentId ORDER BY salary DESC) AS counter 
    FROM Employee
    JOIN Department ON departmentId=Department.id
)
SELECT 
    Department, 
    Employee,
    Salary
FROM temp 
WHERE counter=1