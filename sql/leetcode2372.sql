--Tags SUBQUERY, JOINS
--https://leetcode.com/problems/calculate-the-influence-of-each-salesperson/
--beats 17%
--Write your MySQL query statement below

SELECT
    s.salesperson_id,
    s.name,
    IFNULL(sb1.price,0) AS total 
FROM Salesperson s
LEFT JOIN
(
SELECT 
    c.salesperson_id,
    SUM(sb.price) AS price
FROM Customer c
JOIN 
(
    SELECT 
        customer_id,
        SUM(price) AS price
    FROM Sales 
    GROUP BY customer_id
)sb
ON sb.customer_id = c.customer_id
GROUP BY c.salesperson_id
)sb1
ON s.salesperson_id = sb1.salesperson_id