--Tags Join, math
--https://leetcode.com/problems/warehouse-manager/
--beats 25%
--Write your MySQL query statement below

SELECT 
 w.name AS warehouse_name,
 SUM(p.Width*p.Length*p.Height*w.units) AS volume
FROM Warehouse w
LEFT JOIN Products p
ON w.product_id = p.product_id
GROUP BY w.name