--Tags distinct, join, window
--https://leetcode.com/problems/product-price-at-a-given-date/
--beats 39%
--Write your MySQL query statement below

WITH RANKS AS
(
    SELECT 
        product_id,
        new_price AS price,
        change_date,
        RANK() OVER(PARTITION BY product_id ORDER BY change_date DESC) rn
    FROM Products
    WHERE change_date <= '2019-08-16'
)
SELECT DISTINCT p.product_id, IFNULL(r.price,10) price FROM RANKS r
RIGHT JOIN Products p
ON p.product_id = r.product_id
WHERE price IS NULL OR rn = 1