-- Tags LEFT JOIN, Not Null
--https://leetcode.com/problems/customers-who-never-order/
--Beats 77%
# Write your MySQL query statement below
SELECT Customers.name AS Customers
FROM Customers
LEFT JOIN Orders
ON Customers.id = Orders.customerId 
WHERE Orders.customerId IS NULL