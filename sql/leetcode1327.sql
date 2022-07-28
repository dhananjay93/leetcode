--Tags CTE, GROUP BY
--https://leetcode.com/problems/list-the-products-ordered-in-a-period/
--beats 17%
--Write your MySQL query statement below

WITH O AS
(
    SELECT 
        product_id,
        LEFT(order_date,7) AS order_date,
        SUM(unit) AS unit
    FROM Orders
    GROUP BY product_id, LEFT(order_date,7) 
)
SELECT 
    P.product_name,
    O.unit
FROM O
LEFT JOIN Products P
ON O.product_id = P.product_id
WHERE O.order_date = '2020-02' AND unit >= 100