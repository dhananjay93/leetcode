--Tags JOINS, MATH, RANK
--https://leetcode.com/problems/game-play-analysis-v/description/
--beats 13%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    player_id,
    device_id,
    games_played ,
    event_date,
    LEAD(event_date,1) OVER(PARTITION BY player_id ORDER BY event_date) next_date,
    DATEDIFF(LEAD(event_date,1) OVER(PARTITION BY player_id ORDER BY event_date),event_date) ddf
FROM Activity 
) ,
CTE2 AS 
(
SELECT 
    player_id ,
    MIN(event_date ) AS install_dt,
    CASE WHEN ddf = 1 THEN 1 ELSE 0 END AS ddf
FROM CTE 
GROUP BY player_id
)
SELECT 
    install_dt,
    COUNT(DISTINCT player_id) installs,
    ROUND(SUM(ddf)/COUNT(*),2) Day1_retention 
FROM CTE2
GROUP BY install_dt