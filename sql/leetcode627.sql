-- Tags UPDATE CASE
--https://leetcode.com/problems/swap-salary/
--Beats 25%
# Write your MySQL query statement below
UPDATE Salary SET sex = CASE WHEN sex = "m" THEN "f" ELSE "m" END