--Tags CTE, JOINS
--https://leetcode.com/problems/customer-order-frequency/
--beats 83%
--Write your MySQL query statement below

WITH ref AS
(
    SELECT 
        o.customer_id,
        o.product_id,
        LEFT(o.order_date,7) AS date_order,
        o.quantity * p.price AS sold_price
    FROM Orders o
    LEFT JOIN Product p
    ON o.product_id = p.product_id
    WHERE LEFT(o.order_date,7) IN ('2020-06','2020-07')
),
sold AS
(
    SELECT customer_id, date_order, SUM(sold_price) AS total_price
    FROM ref
    GROUP BY customer_id, date_order
),
customer_list AS
(
    SELECT customer_id, COUNT(*) AS c, MIN(total_price) AS t
    FROM sold
    GROUP BY customer_id
    HAVING c = 2 AND t >= 100
)
SELECT
    customer_list.customer_id,
    Customers.name
FROM customer_list
JOIN Customers
ON customer_list.customer_id = Customers.customer_id