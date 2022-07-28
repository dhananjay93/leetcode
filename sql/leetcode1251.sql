--Tags GROUP BY , CONDITIONING, MATH
--https://leetcode.com/problems/average-selling-price/
--beats 30%
--Write your MySQL query statement below

SELECT 
    u.product_id,
    ROUND(SUM(p.price*u.units)/SUM(u.units),2) AS average_price 
FROM UnitsSold u
LEFT JOIN Prices p
ON u.product_id = p.product_id 
WHERE p.start_date <= u.purchase_date AND u.purchase_date <= p.end_date
GROUP BY product_id