--Tags CTE, JOINS
--https://leetcode.com/problems/team-scores-in-football-tournament/description/
--beats 85%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT
    match_id,
    CASE WHEN host_goals > guest_goals THEN host_team
    WHEN host_goals < guest_goals THEN guest_team
    WHEN  host_goals = guest_goals THEN host_team
    END AS team,
    CASE WHEN host_goals > guest_goals THEN 3
    WHEN host_goals < guest_goals THEN 3
    WHEN  host_goals = guest_goals THEN 1
    END AS score 
FROM Matches 
UNION ALL 
SELECT
    match_id,
    CASE WHEN  host_goals = guest_goals THEN guest_team
    END AS team,
    CASE WHEN  host_goals = guest_goals THEN 1
    END AS score
FROM Matches
WHERE host_goals = guest_goals
),
CTE2 AS
(
SELECT 
    team,
    SUM(score) AS num_points    
 FROM CTE
 GROUP BY team
)
SELECT 
    t.team_id,
    t.team_name,
    IFNULL(CTE2.num_points,0) num_points
FROM Teams t 
LEFT JOIN CTE2
ON t.team_id = CTE2.team
ORDER BY num_points DESC,team_id 