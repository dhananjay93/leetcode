--Tags  SUBQUERY, AGGREGATION
--https://leetcode.com/problems/active-businesses/
--beats 20%
--Write your MySQL query statement below

SELECT 
    e.business_id
FROM Events e
LEFT JOIN
(
SELECT 
    event_type,
    SUM(occurences)/COUNT(*) AS avg_activity
FROM Events
GROUP BY event_type
)e1
ON e.event_type  = e1.event_type 
GROUP BY e.business_id
HAVING SUM(CASE WHEN e.occurences > e1.avg_activity THEN 1 ELSE 0 END) > 1