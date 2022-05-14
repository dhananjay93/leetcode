-- Tags CTE, IFNULL
--https://leetcode.com/problems/market-analysis-i/submissions/
--Beats 56%
-- Write your MySQL query statement below
WITH buyers_2019 AS
(
SELECT
    buyer_id,
    COUNT(order_id) AS orders_in_2019 
FROM Orders
WHERE YEAR(order_date) = 2019
GROUP BY buyer_id
)
SELECT
    Users.user_id AS buyer_id,
    Users.join_date,
    IFNULL(buyers_2019.orders_in_2019,0) AS orders_in_2019
FROM Users
LEFT JOIN buyers_2019
ON Users.user_id = buyers_2019.buyer_id
