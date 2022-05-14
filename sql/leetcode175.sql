-- Tags LEFT JOIN
--https://leetcode.com/problems/combine-two-tables/
--Beats 77%
-- Write your MySQL query statement below
SELECT
    a.firstName,
    a.lastName,
    b.city,
    b.state
FROM Person a
LEFT JOIN Address b
ON a.personId = b.personId