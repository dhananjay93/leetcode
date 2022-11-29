--Tags CTE, GROUP BY , JOINS, RANKS
--https://leetcode.com/problems/hopper-company-queries-iii/description/
--beats 10%
--Write your MySQL query statement below

WITH recursive CTE AS 
(
    SELECT 1 AS month
    UNION ALL 
    SELECT month + 1 FROM CTE WHERE month < 12
),
CTE1 AS 
(
SELECT 
    MONTH(r.requested_at) month,
    SUM(a.ride_distance) ride_distance,
    SUM(a.ride_duration) ride_duration 
FROM Rides r 
JOIN AcceptedRides a 
ON r.ride_id = a.ride_id AND YEAR(r.requested_at) = 2020
GROUP BY MONTH(r.requested_at)
)
SELECT 
    c.month,
    ROUND((IFNULL(c1.ride_distance,0) + IFNULL(c2.ride_distance,0) + IFNULL(c3.ride_distance,0))/3,2) average_ride_distance ,
    ROUND((IFNULL(c1.ride_duration,0) + IFNULL(c2.ride_duration,0) + IFNULL(c3.ride_duration,0))/3,2)average_ride_duration 
FROM CTE c
LEFT JOIN CTE1 c1 ON c.month = c1.month
LEFT JOIN CTE1 c2 ON c.month = c2.month - 1
LEFT JOIN CTE1 c3 ON c.month = c3.month - 2
WHERE c.month <= 10