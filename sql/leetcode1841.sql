--Tags WITH CTE SCORE
--https://leetcode.com/problems/league-statistics/description/
--beats 6%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT 
        *,
        CASE WHEN home_team_goals > away_team_goals  THEN 3 
        WHEN home_team_goals = away_team_goals  THEN 1
        ELSE 0 END AS home_team_score,
        CASE WHEN home_team_goals < away_team_goals  THEN 3 
        WHEN home_team_goals = away_team_goals  THEN 1
        ELSE 0 END AS away_team_score
    FROM Matches 
),
CTE1 AS
(
SELECT 
    home_team_id team,
    home_team_goals goal_for ,
    away_team_goals goal_against ,
    home_team_score AS points
FROM CTE
UNION ALL
SELECT 
    away_team_id team,
    away_team_goals goal_for ,
    home_team_goals goal_against ,
    away_team_score AS points
FROM CTE
)
SELECT 
    t.team_name ,
    COUNT(*) matches_played,
    SUM(c.points) AS points,
    SUM(c.goal_for) as goal_for,
    SUM(c.goal_against ) AS goal_against,
    SUM(c.goal_for) - SUM(c.goal_against) AS goal_diff 
FROM CTE1 c
JOIN Teams t
ON c.team = t.team_id 
GROUP BY c.team 
ORDER BY points DESC, goal_diff DESC, team_name