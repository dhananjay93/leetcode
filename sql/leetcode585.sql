--Tags CTE, JOIN, AGGREGATE
--https://leetcode.com/problems/investments-in-2016/description/
--beats 50%
--Write your MySQL query statement below

WITH lat_lan AS
(
SELECT 
 lat,
 lon,
 COUNT(*) counter 
FROM Insurance 
GROUP BY lat, lon
),
tiv AS
(
SELECT 
   tiv_2015,
   COUNT(*) counter 
FROM Insurance 
GROUP BY tiv_2015
)
SELECT 
    ROUND(SUM(tiv_2016),2) tiv_2016
FROM Insurance i 
LEFT JOIN tiv ON i.tiv_2015  = tiv.tiv_2015
LEFT JOIN lat_lan ON i.lat = lat_lan.lat AND i.lon = lat_lan.lon 
WHERE tiv.counter > 1 AND lat_lan.counter = 1