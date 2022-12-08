--Tags GROUP BY, MATH, JOINS
--https://leetcode.com/problems/hopper-company-queries-ii/description/
--beats 25%
--Write your MySQL query statement below

WITH CTE AS 
(
    SELECT '2020-01' AS joinMonth
    UNION ALL 
    SELECT '2020-02' AS joinMonth
    UNION ALL
    SELECT '2020-03' AS joinMonth
    UNION ALL
    SELECT '2020-04' AS joinMonth
    UNION ALL
    SELECT '2020-05' AS joinMonth
    UNION ALL
    SELECT '2020-06' AS joinMonth
    UNION ALL
    SELECT '2020-07' AS joinMonth
    UNION ALL 
    SELECT '2020-08' AS joinMonth
    UNION ALL
    SELECT '2020-09' AS joinMonth
    UNION ALL
    SELECT '2020-10' AS joinMonth
    UNION ALL
    SELECT '2020-11' AS joinMonth
    UNION ALL
    SELECT '2020-12' AS joinMonth
),
CTE2 AS 
(
    SELECT
    ar.ride_id,
    ar.driver_id,
    r.requested_at      
FROM AcceptedRides ar
INNER JOIN Rides r 
ON ar.ride_id = r.ride_id
)
SELECT
 CONVERT(CASE WHEN SUBSTRING(joinMonth,6,1) = '0'  THEN RIGHT(joinMonth,1) ELSE RIGHT(joinMonth,2) END, UNSIGNED INTEGER) AS month,
  ROUND(COALESCE(COUNT(DISTINCT driver_id)*100/(SELECT COUNT(driver_id) FROM drivers WHERE DATE_FORMAT(join_date, '%Y-%m') <= joinMonth), 0),2) AS working_percentage 
FROM
(
SELECT
    *
FROM CTE2
RIGHT JOIN CTE
ON CTE.joinMonth = DATE_FORMAT(CTE2.requested_at,'%Y-%m')
)sb
GROUP BY joinMonth
ORDER BY joinMonth