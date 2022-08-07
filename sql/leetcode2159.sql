--Tags CTE, WINDOW, JOIN
--https://leetcode.com/problems/order-two-columns-independently/
--beats 46%
--Write your MySQL query statement below

WITH t1 AS
(
SELECT
    first_col,
    ROW_NUMBER() OVER(ORDER BY first_col ) rn
FROM Data 
),
t2 AS
(
    SELECT
    second_col ,
    ROW_NUMBER() OVER(ORDER BY second_col DESC ) rn 
FROM Data 
)
SELECT 
    t1.first_col,
    t2.second_col
FROM t1
LEFT JOIN t2
ON t1.rn = t2.rn