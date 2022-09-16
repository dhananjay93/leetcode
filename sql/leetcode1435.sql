--Tags conditioning, union all
--https://leetcode.com/problems/create-a-session-bar-chart/
--beats 66%
--Write your MySQL query statement below

SELECT
'[0-5>' AS bin, COUNT(duration /60) total
FROM sessions WHERE duration /60 <5

UNION ALL

SELECT
'[5-10>' AS bin, COUNT(duration /60) total
FROM sessions WHERE duration /60 >= 5 and duration /60 <10

UNION ALL

SELECT
'[10-15>' AS bin, COUNT(duration /60) total
FROM sessions WHERE duration /60 >= 10 and duration /60 <15

UNION ALL

SELECT
'15 or more' AS bin, COUNT(duration /60) total
FROM sessions WHERE duration /60 >= 15
