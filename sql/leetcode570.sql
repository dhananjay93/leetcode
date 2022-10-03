--Tags AGGREGATION, SUBQUERY
--https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/
--beats 12%

SELECT 
    name
FROM Employee 
WHERE id IN
(SELECT
    managerId
FROM Employee 
GROUP BY managerId
HAVING COUNT(*) >= 5
)