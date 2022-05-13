--Tags GROUP_CONCAT
#https://leetcode.com/problems/group-sold-products-by-the-date/
# Write your MySQL query statement below
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(distinct product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date