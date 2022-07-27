--Tags COUNT DISTINCT, GROUP BY , CTE
--https://leetcode.com/problems/unique-orders-and-customers-per-month/
--beats 52%
--Write your MySQL query statement below

WITH C AS
(
    SELECT 
        LEFT(order_date,7) AS month,
        customer_id,
        order_id 
    FROM Orders
    WHERE invoice > 20
)
SELECT 
month,
COUNT(DISTINCT customer_id) AS order_count ,
COUNT(order_id) AS customer_count
FROM C
GROUP BY month

-- Approach 2
SELECT 
    LEFT(order_date,7) AS month,
    COUNT(DISTINCT customer_id) AS order_count,
    COUNT(order_id) AS customer_count 
FROM Orders
WHERE invoice > 20
GROUP BY month