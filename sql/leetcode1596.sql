--Tags CTE, RANK
--https://leetcode.com/problems/the-most-frequently-ordered-products-for-each-customer/
--beats 42%
--Write your MySQL query statement below

WITH t AS
(
    SELECT
        customer_id,
        product_id,
        COUNT(*) AS COUNTER
    FROM Orders
    GROUP BY customer_id, product_id
    ORDER BY customer_id, COUNTER DESC
),
r AS
(
SELECT
    customer_id,
    product_id,
    COUNTER,
    RANK() OVER(PARTITION BY customer_id ORDER BY COUNTER DESC) as rn
FROM t
)
SELECT 
    r.customer_id,
    r.product_id,
    p.product_name
FROM r
LEFT JOIN Products p
ON r.product_id = p.product_id
WHERE r.rn = 1