--Tags UNION ALL, SUBQUERY
--https://leetcode.com/problems/drop-type-1-orders-for-customers-with-type-0-orders/
--beats 60%
--Write your MySQL query statement below

-- Block 1 shows orders from customers with order type 0 and excludes the order type 1 from those
SELECT
    order_id,
    customer_id,
    order_type
FROM Orders
WHERE customer_id IN (SELECT customer_id FROM Orders WHERE order_type = 0) AND order_type != 1

UNION ALL

-- Block 2 shows customers which have order type equals only 1
SELECT
    order_id,
    customer_id,
    order_type
FROM Orders
WHERE customer_id NOT IN (SELECT customer_id FROM Orders WHERE order_type = 0)


    
