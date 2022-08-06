--Tags  CTE, RANK
--https://leetcode.com/problems/the-airport-with-the-most-traffic/
--beats 50%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT 
        airport_id,
        SUM(flights_count) AS cnt
    FROM
    (
    SELECT
        departure_airport AS airport_id ,
        flights_count
    FROM Flights
    UNION ALL
    SELECT
        arrival_airport  AS airport_id ,
        flights_count
    FROM Flights
    )sb1
    GROUP BY airport_id
)
SELECT airport_id
FROM
(
    SELECT 
        airport_id,
        RANK() OVER(ORDER BY cnt DESC) rn
    FROM CTE
)sb2
WHERE rn = 1