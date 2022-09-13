--Tags joins, conditioning
--https://leetcode.com/problems/friendly-movies-streamed-last-month/
--beats 71%
--Write your MySQL query statement below


SELECT DISTINCT
    c.title          
FROM Content c
JOIN TVProgram t
ON c.content_id = t.content_id
WHERE c.Kids_content  = 'Y' AND LEFT(t.program_date,7) = '2020-06' and c.content_type = "Movies"