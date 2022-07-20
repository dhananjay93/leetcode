--Tags LEFT JOIN, aggregate, CTE
--https://leetcode.com/problems/find-the-team-size/
--beats 70%
-- Write your MySQL query statement below


-- Get count of each team id in one table
WITH c AS
(
SELECT DISTINCT
    team_id,
    COUNT(team_id) AS team_size
FROM Employee 
GROUP BY team_id    
)
-- merge it with original table
SELECT 
    e.employee_id,
    c.team_size
FROM Employee e
LEFT JOIN c
ON e.team_id = c.team_id
    
