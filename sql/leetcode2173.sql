--Tags CTE, GROUP BY , JOINS, RANKS
--https://leetcode.com/problems/longest-winning-streak/description/
--beats 49%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT
    player_id,
    match_day,
    result,
    RANK() OVER(PARTITION BY player_id, result ORDER BY player_id,match_day,result) rn ,
    RANK() OVER(PARTITION BY player_id ORDER BY match_day) rn2 
FROM Matches
),
CTE2 AS 
(
SELECT
    player_id ,
    COUNT(winGap) longest_streak ,
    RANK() OVER(PARTITION BY player_id ORDER BY COUNT(winGap) DESC) rnk
FROM
(
SELECT 
    *,
    CAST(rn AS SIGNED) - CAST(rn2 AS SIGNED) winGap
FROM CTE
WHERE result = 'Win'
) sb
GROUP BY player_id ,winGap  
),
allPlayers AS 
(
    SELECT
        DISTINCT player_id
    FROM Matches 
)
SELECT DISTINCT
    a.player_id,
    IFNULL(c2.longest_streak,0) longest_streak
FROM allPlayers a 
LEFT JOIN CTE2 c2
ON c2.player_id = a.player_id
WHERE rnk = 1 or rnk IS NULL