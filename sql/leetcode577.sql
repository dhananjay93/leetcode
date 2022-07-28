--Tags is null, conditioning
--https://leetcode.com/problems/employee-bonus/
--beats 55%
--Write your MySQL query statement below

SELECT 
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE bonus < 1000 or bonus is null