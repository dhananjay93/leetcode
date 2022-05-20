--Tags NOT IN, SUBQUERY 
--https://leetcode.com/problems/sales-analysis-iii/submissions/
--beats 95%
-- Write your MySQL query statement below 
WITH non_spring AS
(
    SELECT DISTINCT product_id
    FROM Sales 
    WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31' 
)
SELECT
    product_id,
    product_name 
FROM Product
WHERE product_id 
NOT IN (SELECT DISTINCT product_id FROM non_spring )