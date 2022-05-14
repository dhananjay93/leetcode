-- Tags Conditioning , AND
--https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Beats 88%
# Write your MySQL query statement below
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'