--Tags CTE, max, window 
--https://leetcode.com/problems/hopper-company-queries-i/description/
--beats 26%
--Write your MySQL query statement below

WITH recursive CTE AS 
(
    SELECT 1 AS month
    UNION ALL
    SELECT month + 1 FROM CTE WHERE month < 12
),
active_drivers AS
(
SELECT 
    active_drivers,
    month
FROM 
(
SELECT 
    DATE_FORMAT(join_date , '%Y-%m') AS year_and_month,
    SUM(COUNT(driver_id)) OVER(ORDER BY join_date) active_drivers,
    RIGHT(DATE_FORMAT(join_date , '%Y-%m'),2) month
FROM Drivers 
GROUP BY DATE_FORMAT(join_date , '%Y-%m')
)sb
WHERE LEFT(year_and_month,4) = 2020
),
accepted_rides AS
(
SELECT 
    accepted_rides,
    month
FROM 
(
SELECT 
    DATE_FORMAT(r.requested_at , '%Y-%m') AS year_and_month,
    #SUM(COUNT(r.ride_id)) OVER(ORDER BY r.requested_at) accepted_rides 
    COUNT(r.ride_id) accepted_rides,
    RIGHT(DATE_FORMAT(requested_at , '%Y-%m'),2) month
FROM Rides r 
INNER JOIN AcceptedRides a
ON r.ride_id = a.ride_id 
GROUP BY DATE_FORMAT(r.requested_at , '%Y-%m')
)sb 
WHERE LEFT(year_and_month,4) = 2020
)
SELECT 
    month,  
    ifnull(MAX(active_drivers ) OVER(PARTITION BY null_counter),0) active_drivers ,
    accepted_rides 
FROM 
(
SELECT 
    c.month,  
    a.active_drivers , 
    SUM(IF(a.active_drivers IS NOT NULL,1,0)) OVER (ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS null_counter,
    IFNULL(b.accepted_rides,0) accepted_rides
FROM CTE c
LEFT JOIN active_drivers a ON c.month = TRIM(a.month)
LEFT JOIN accepted_rides b ON c.month = TRIM(b.month)
)sb