-- Tags Aggregation
--https://leetcode.com/problems/classes-more-than-5-students/
--Beats 49%
-- Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
having count(*) >= 5