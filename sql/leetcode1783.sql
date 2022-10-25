--Tags CTE JOIN UNION 
--https://leetcode.com/problems/grand-slam-titles/description/
--beats 47%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT Wimbledon AS player_id FROM Championships 
UNION ALL
SELECT  Fr_open AS player_id FROM Championships
UNION ALL
SELECT  US_open AS player_id FROM Championships
UNION ALL
SELECT  Au_open AS player_id FROM Championships
)
SELECT 
    c.player_id,
    p.player_name,
    COUNT(*) grand_slams_count
FROM CTE c
INNER JOIN Players p 
ON c.player_id = p.player_id
GROUP BY c.player_id