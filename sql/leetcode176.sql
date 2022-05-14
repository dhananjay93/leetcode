-- Tags subquery, subquery
--https://leetcode.com/problems/second-highest-salary/
--Beats 88%
-- Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) from Employee)