--Tags ORDER BY, RANK, SIGNED
--https://leetcode.com/problems/the-change-in-global-rankings/
--beats 50%

WITH CTE AS
(
SELECT
    t.team_id,
    t.name,
    t.points,
    t.points + p.points_change,
    RANK() OVER(ORDER BY t.points DESC, t.name) prn,
    RANK() OVER(ORDER BY (t.points + p.points_change) DESC,t.name) crn
FROM TeamPoints t
LEFT JOIN PointsChange p
ON t.team_id = p.team_id
)
SELECT 
    team_id,
    name,
    (CAST(prn AS SIGNED)-CAST(crn AS SIGNED)) rank_diff
FROM CTE