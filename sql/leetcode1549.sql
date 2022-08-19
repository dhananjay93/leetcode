--Tags CTE, JOIN, ANALYTICAL
--https://leetcode.com/problems/the-most-recent-orders-for-each-product/
--beats 72%
--Write your MySQL query statement below

SELECT 
    product_name,
    product_id,
    order_id,
    order_date
FROM
(
    SELECT 
        o.product_id,
        o.order_id,
        o.order_date,
        p.product_name,
        RANK() OVER(PARTITION BY o.product_id ORDER BY order_date DESC) rn
    FROM Orders o
    LEFT JOIN Products p
    ON o.product_id = p.product_id
)sb
WHERE rn = 1
ORDER BY product_name,product_id,order_id  