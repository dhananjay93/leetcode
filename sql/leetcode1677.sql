--Tags JOIN
--https://leetcode.com/problems/products-worth-over-invoices/
--beats 56%
--Write your MySQL query statement below

SELECT
    p.name ,
    IFNULL(SUM(i.rest),0) AS rest,
    IFNULL(SUM(i.paid),0) AS paid,
    IFNULL(SUM(i.canceled),0) AS canceled,
    IFNULL(SUM(i.refunded),0) AS refunded
FROM Invoice i
RIGHT JOIN Product p
ON i.product_id = p.product_id 
GROUP BY p.name 
ORDER BY name