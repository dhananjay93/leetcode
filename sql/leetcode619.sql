--Tags SUBQUERY
--https://leetcode.com/problems/products-worth-over-invoices/
--beats 35%
--Write your MySQL query statement below

SELECT MAX(num) num
FROM
(
SELECT
    num,
    COUNT(*) COUNTER 
FROM MyNumbers 
GROUP BY num
)sb
WHERE COUNTER = 1