--Tags CTE, JOINS
--https://leetcode.com/problems/sales-analysis-ii/
--beats 50%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT 
    Sales.*,
    Product.product_name 
FROM Sales
LEFT JOIN Product
ON Sales.product_id  = Product.product_id
)
SELECT DISTINCT buyer_id
FROM CTE 
WHERE product_name = 'S8' AND buyer_id 
NOT IN 
(SELECT buyer_id 
FROM CTE WHERE product_name = 'iPhone')