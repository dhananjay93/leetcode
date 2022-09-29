--Tags LAG,LEAD, 
--https://leetcode.com/problems/consecutive-available-seats/
--beats 92%

WITH CTE AS
(
SELECT
    seat_id,
    free,
    LAG(free,1) OVER() lag1,
    LEAD(free,1) OVER() lead1
FROM Cinema 
)
SELECT seat_id FROM CTE
WHERE (free = 1 AND lag1 = 1) OR (free = 1 AND lead1 = 1)
ORDER BY seat_id