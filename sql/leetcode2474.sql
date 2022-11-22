--Tags CTE, PARTITION
--https://leetcode.com/problems/customers-with-strictly-increasing-purchases/description/
--beats 25%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT
    customer_id,
    LEFT(order_date,4) year,
    SUM(price) price
FROM Orders 
GROUP BY customer_id, LEFT(order_date,4)
),
CTE2 AS
(
SELECT 
    customer_id,
    year,
    price,
    (MAX(year) OVER(PARTITION BY customer_id) - MIN(year) OVER(PARTITION BY customer_id)) maxMin ,
    COUNT(*) OVER(PARTITION BY customer_id) - 1 counter,
    price - IFNULL(LAG(price,1) OVER(PARTITION BY customer_id ORDER BY year),0) lag_price
FROM CTE
)
SELECT DISTINCT customer_id FROM CTE2 WHERE counter = maxMin AND 
 customer_id NOT IN (
SELECT customer_id 
FROM CTE2 
WHERE lag_price <= 0)