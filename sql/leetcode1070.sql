--Tags SUBQUERY, ANALYTICAL
--https://leetcode.com/problems/product-sales-analysis-iii/
--beats 71%
--Write your MySQL query statement below

SELECT 
    product_id,
    year first_year,
    quantity,
    price
FROM  
(
SELECT 
    product_id,
    year,
    quantity,
    price,
    RANK() OVER(PARTITION BY product_id ORDER BY year) rn
FROM Sales 
) sb
WHERE rn = 1