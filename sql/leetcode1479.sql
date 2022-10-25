--Tags CTE JOIN UNION 
--https://leetcode.com/problems/sales-by-day-of-the-week/description/
--beats 47%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    DAYNAME(o.order_date) wday,
    i.item_category Category,
    IFNULL(SUM(o.quantity),0) quantity
FROM Orders o
RIGHT JOIN Items i 
ON o.item_id = i.item_id
GROUP BY DAYNAME(o.order_date),i.item_category
)
SELECT 
    Category,
    SUM(CASE WHEN wday =  'Monday' THEN quantity ELSE 0 END) AS 'Monday',
    SUM(CASE WHEN wday =  'Tuesday' THEN quantity ELSE 0 END) AS 'Tuesday',
    SUM(CASE WHEN wday =  'Wednesday' THEN quantity ELSE 0 END) AS 'Wednesday',
    SUM(CASE WHEN wday =  'Thursday' THEN quantity ELSE 0 END) AS 'Thursday',
    SUM(CASE WHEN wday =  'Friday' THEN quantity ELSE 0 END) AS 'Friday',
    SUM(CASE WHEN wday =  'Saturday' THEN quantity ELSE 0 END) AS 'Saturday',
    SUM(CASE WHEN wday =  'Sunday' THEN quantity ELSE 0 END) AS 'Sunday'
FROM CTE
GROUP BY Category
ORDER BY Category 	