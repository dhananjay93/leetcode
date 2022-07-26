--Tags ORDER BY, MATHS
--https://leetcode.com/problems/low-quality-problems/
--beats 29%
--Write your MySQL query statement below

SELECT
 problem_id
FROM Problems
WHERE likes/(likes + dislikes) < 0.6
ORDER BY problem_id