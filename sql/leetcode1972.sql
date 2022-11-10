--Tags CTE, RANK, GROUP BY 
--https://leetcode.com/problems/first-and-last-call-on-the-same-day/description/
--beats 31%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT 
        caller_id id1,
        call_time,
        recipient_id id2
    FROM Calls
    UNION ALL 
        SELECT 
        recipient_id id1,
        call_time,
        caller_id id2
    FROM Calls
),
CTE1 AS 
(
SELECT 
    id1 ,
    id2 ,
    left(call_time,10) dater,
    RANK() OVER(PARTITION BY id1,left(call_time,10) ORDER BY call_time) rnasc,
    RANK() OVER(PARTITION BY id1,left(call_time,10) ORDER BY call_time DESC) rndsc
FROM CTE
)
SELECT DISTINCT id1 user_id 
FROM CTE1
WHERE rnasc = 1 OR rndsc = 1
GROUP BY id1, dater
HAVING COUNT(DISTINCT id2) = 1