--Tags COUNT DISTINCT, CONDITIONING
--https://leetcode.com/problems/the-number-of-rich-customers/
--beats 28%
--Write your MySQL query statement below

SELECT 
    COUNT(DISTINCT customer_id) AS rich_count
FROM Store
WHERE amount > 500