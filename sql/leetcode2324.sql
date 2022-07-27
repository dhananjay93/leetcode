--Tags left join,window function
--https://leetcode.com/problems/product-sales-analysis-iv/
--beats 53%
--Write your MySQL query statement below

WITH S AS
(
SELECT 
    user_id,
    product_id,
    SUM(quantity) AS quantity
FROM Sales
GROUP BY user_id, product_id
)
SELECT 
    user_id,
    product_id
FROM 
(
    SELECT 
    S.user_id,
    S.product_id,
    DENSE_RANK() OVER(PARTITION BY user_id ORDER BY S.quantity*P.price DESC) AS rn
FROM S
LEFT JOIN Product P
ON S.product_id = P.product_id
    ) a
WHERE rn = 1