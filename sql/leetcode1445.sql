--Tags CTE, LEFT JOIN
--https://leetcode.com/problems/apples-oranges/
--beats 25%
-- Write your MySQL query statement below

WITH O AS
(
SELECT
    sale_date,
    sold_num AS o_sales
FROM 
    Sales 
WHERE 
    fruit = 'oranges'
),

A AS
(
SELECT
    sale_date,
    sold_num AS a_sales
FROM 
    Sales 
WHERE 
    fruit = 'apples'
)
SELECT 
    A.sale_date,
    A.a_sales - O.o_sales AS diff
FROM A
LEFT JOIN O
ON A.sale_date = O.sale_date