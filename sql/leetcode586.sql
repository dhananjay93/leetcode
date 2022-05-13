-- Tags Highest orders top order by 
#https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
# Write your MySQL query statement below
SELECT 
customer_number
FROM
(
SELECT

 customer_number, 

 count(order_number) AS COUNTER

 FROM Orders

 GROUP BY customer_number

 ORDER BY COUNTER DESC

 ) t

 LIMIT 1