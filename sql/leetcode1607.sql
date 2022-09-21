--Tags SUBQUERY
--https://leetcode.com/problems/sellers-with-no-sales/
--beats 6%
--Write your MySQL query statement below

SELECT 
    seller_name 
FROM Seller 
WHERE seller_id   
NOT IN
(
SELECT
    seller_id
FROM Orders 
WHERE LEFT(sale_date,4) = '2020'
)
ORDER BY seller_name