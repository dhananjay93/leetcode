--Tags  CTE, Window
--https://leetcode.com/problems/the-first-day-of-the-maximum-recorded-degree-in-each-city/
--beats 93%
--Write your MySQL query statement below

SELECT 
    city_id,
    MIN(day) day,
    degree
FROM 
(    
    SELECT 
        city_id,
        day,
        degree,
        RANK() OVER(PARTITION BY city_id ORDER BY degree DESC) rn
    FROM Weather
) sb
WHERE rn = 1
GROUP BY city_id