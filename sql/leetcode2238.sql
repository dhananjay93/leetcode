--Tags  CTE, JOIN
--https://leetcode.com/problems/number-of-times-a-driver-was-a-passenger/
--beats 66%
--Write your MySQL query statement below

WITH pass AS
(
SELECT 
    passenger_id,
    COUNT(*) pass_count
FROM Rides
GROUP BY passenger_id
)
SELECT DISTINCT 
    r.driver_id, 
    IFNULL(p.pass_count,0) cnt
FROM Rides r
LEFT JOIN pass p
ON r.driver_id = p.passenger_id