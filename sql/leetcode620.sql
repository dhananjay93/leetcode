-- Tags conditioning
--https://leetcode.com/problems/not-boring-movies/
--Beats 91%
-- Write your MySQL query statement below
SELECT * 
FROM Cinema
WHERE id%2 = 1 AND description != 'boring'
ORDER BY rating DESC