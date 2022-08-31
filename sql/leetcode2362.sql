--Tags JOIN, AGGREGATE 
--https://leetcode.com/problems/generate-the-invoice/
--beats 19%
--Write your MySQL query statement below

SELECT 
    pu.product_id,
    pu.quantity,
    pu.quantity*pr.price price
FROM Purchases pu
LEFT JOIN Products pr
ON pu.product_id = pr.product_id
WHERE pu.invoice_id
=
(
    SELECT 
        pu.invoice_id
    FROM Purchases pu
    LEFT JOIN Products pr
    ON pu.product_id = pr.product_id
    GROUP BY invoice_id
    ORDER BY SUM(pu.quantity*pr.price) DESC,invoice_id
    LIMIT 1
)