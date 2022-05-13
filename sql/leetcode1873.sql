--Tags If condition
#https://leetcode.com/problems/calculate-special-bonus/
# Write your MySQL query statement below
SELECT 
    employee_id,
    IF(employee_id%2 = 1 AND name NOT LIKE 'M%',salary,0) AS bonus
FROM Employees