--Tags CTE JOIN UNION 
--https://leetcode.com/problems/tournament-winners/description/
--beats 76%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    first_player player_id,
    first_score score 
FROM Matches 
UNION ALL 
SELECT 
    second_player player_id ,
    second_score score 
FROM Matches
),
CTE2 AS
(
SELECT 
    c.player_id ,
    p.group_id,
    SUM(c.score) score
FROM CTE c
JOIN Players p 
ON c.player_id = p.player_id 
GROUP BY c.player_id
)
SELECT
    group_id,
    player_id
FROM (
    SELECT
        group_id,
        player_id,
        DENSE_RANK () OVER (PARTITION BY group_id ORDER BY score DESC, player_id) AS rnk
    FROM CTE2
) rankings
WHERE rnk = 1