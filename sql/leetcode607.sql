--Learnings - Subquery
#https://leetcode.com/problems/sales-person/
# Write your MySQL query statement below
SELECT name 
FROM salesperson 
WHERE sales_id 
NOT IN 
(SELECT 
 sales_id 
 FROM orders
 WHERE com_id = (SELECT com_id FROM company c WHERE c.name = 'RED'))