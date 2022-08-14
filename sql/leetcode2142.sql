--Tags FULL JOIN, SUBQUERY
--https://leetcode.com/problems/the-number-of-passengers-in-each-bus-i/
--beats 54%
--Write your MySQL query statement below

SELECT DISTINCT
    b.bus_id,
    IFNULL(sb2.passengers_cnt,0) passengers_cnt
FROM Buses b
LEFT JOIN 
(
    SELECT 
        bus_id,
        COUNT(*) passengers_cnt
    FROM 
    (
        SELECT
            b.bus_id,
            p.passenger_id,
            DENSE_RANK() OVER (PARTITION by p.passenger_id ORDER BY b.arrival_time) AS ranker
        FROM Buses b
        left JOIN Passengers p
        ON b.arrival_time >= p.arrival_time 
    )sb1
    WHERE ranker = 1 AND passenger_id IS NOT NULL
    GROUP BY bus_id 
)sb2
ON sb2.bus_id = b.bus_id
ORDER BY bus_id 