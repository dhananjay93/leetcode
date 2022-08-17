--Tags CTE, WINDOW
--https://leetcode.com/problems/immediate-food-delivery-ii/
--beats 98%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT
        customer_id,
        order_date,
        customer_pref_delivery_date,
        CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END AS scheduled,
        RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rn
    FROM Delivery
)
SELECT 
ROUND(SUM(scheduled)/COUNT(*)*100,2) immediate_percentage 
FROM CTE
WHERE rn = 1