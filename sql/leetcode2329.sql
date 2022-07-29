--Tags cte,order by, group by
--https://leetcode.com/problems/product-sales-analysis-v/
--beats 36%
--Write your MySQL query statement below

WITH t AS
(
SELECT
    s.user_id,
    s.quantity * p.price AS spending 
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id
)
SELECT 
 user_id,
 SUM(spending) AS spending
FROM t
GROUP BY user_id
ORDER BY spending DESC