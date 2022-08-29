--Tags SUBQUERY, 
--https://leetcode.com/problems/game-play-analysis-ii/
--beats 42%
--Write your MySQL query statement below

SELECT DISTINCT
    player_id,
    device_id
FROM 
(
    SELECT
        player_id,
        device_id,
        event_date,
        RANK() OVER(PARTITION BY player_id ORDER BY event_date ) rn
    FROM 
    Activity 
)sb1
WHERE rn = 1