--Tags CTE, WINDOW, MOVING AVERAGE
--https://leetcode.com/problems/restaurant-growth/description/
--beats 89%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT
    visited_on,
    SUM(amount) amount,
    RANK() OVER(ORDER BY visited_on) rn
FROM Customer 
GROUP BY visited_on
),
CTE2 AS
(
SELECT
    visited_on,
    ROUND(SUM(amount) OVER(ORDER BY visited_on
                        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS amount,
    ROUND(AVG(amount) OVER(ORDER BY visited_on
                        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS average_amount,
    rn 
FROM CTE
)
SELECT 
    visited_on,
    amount,
    average_amount
FROM CTE2
WHERE rn > 6