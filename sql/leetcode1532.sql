--Tags  window function , cte
--https://leetcode.com/problems/the-most-recent-three-orders/
--beats 27%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT
        c.name customer_name,
        c.customer_id,
        o.order_id,
        o.order_date
    FROM Customers c
    INNER JOIN Orders o
    ON c.customer_id = o.customer_id
)
SELECT
    customer_name,
    customer_id,
    order_id,
    order_date
FROM
(
    SELECT 
    customer_name,
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date DESC) rn
FROM CTE
)sb
WHERE rn <= 3
ORDER BY customer_name ASC, customer_id ASC, order_date DESC