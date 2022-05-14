-- Tags self join, left join
--https://leetcode.com/problems/employees-earning-more-than-their-managers/
--Beats 93%
-- Write your MySQL query statement below
SELECT A.name as Employee
FROM Employee A
LEFT JOIN Employee B
ON A.managerId = b.id
WHERE A.salary > B.salary