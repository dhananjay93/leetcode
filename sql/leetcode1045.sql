--Tags AGGREGATION
--https://leetcode.com/problems/customers-who-bought-all-products/
--beats 40%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT DISTINCT
    customer_id,
    product_key 
FROM Customer
)
SELECT 
    customer_id
FROM CTE
GROUP BY customer_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM Product )