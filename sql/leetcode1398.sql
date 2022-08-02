--Tags  CTE, SUBQUERY
--https://leetcode.com/problems/customers-who-bought-products-a-and-b-but-not-c/
--beats 56%
--Write your MySQL query statement below

WITH cust_id AS
(
    SELECT DISTINCT
    customer_id 
    FROM Orders 
    WHERE product_name  = 'A' --- Who ordered A
    AND customer_id IN 
    (SELECT DISTINCT
    customer_id 
    FROM Orders 
    WHERE product_name  = 'B') AND  --- Who ordered B
    customer_id NOT IN 
    (SELECT DISTINCT
    customer_id 
    FROM Orders 
    WHERE product_name  = 'C') --- Who ordered C
)
SELECT 
    cust_id.customer_id,
    Customers.customer_name
FROM cust_id
LEFT JOIN Customers
ON cust_id.customer_id = Customers.customer_id   