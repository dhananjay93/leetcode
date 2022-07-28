--Tags MIN, GROUP BY, LAG
--https://leetcode.com/problems/shortest-distance-in-a-line/
--beats 11%
--Write your MySQL query statement below

SELECT MIN(dist) AS shortest FROM
(
    SELECT
    abs(x - LAG(x,1) OVER(ORDER BY x)) AS dist
    FROM Point
)S