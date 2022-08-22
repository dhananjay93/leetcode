--Tags CTE, JOIN, ANALYTICAL
--https://leetcode.com/problems/products-with-three-or-more-orders-in-two-consecutive-years/
--beats 37%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT
    product_id,
    DATE_FORMAT(purchase_date, '%Y') AS year,
    COUNT(*) AS COUNTS 
FROM Orders
GROUP BY product_id, year
HAVING COUNTS >= 3
)
SELECT DISTINCT c1.product_id product_id 
FROM CTE c1
LEFT JOIN CTE c2
ON c1.product_id = c2.product_id AND c1.year = c2.year - 1
WHERE c2.year IS NOT NULL