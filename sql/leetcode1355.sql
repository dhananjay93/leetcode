--Tags  CTE, ASCENDING, DESCENDING RANK
--https://leetcode.com/problems/activity-participants/
--beats 90%
--Write your MySQL query statement below

WITH ranks AS
(
    SELECT 
        activity,
        RANK() OVER(ORDER BY COUNT(id)) Asc_rank,
        RANK() OVER(ORDER BY COUNT(id) DESC) Desc_rank
    FROM Friends
    GROUP BY activity
)
SELECT 
    activity
FROM ranks
WHERE Asc_rank != 1 AND Desc_rank != 1