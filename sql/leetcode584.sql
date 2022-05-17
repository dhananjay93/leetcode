--Tags conditioning, Null
--https://leetcode.com/problems/find-customer-referee/
--beats 70%
-- Write your MySQL query statement below
SELECT name
FROM Customer 
WHERE referee_id != 2 OR referee_id IS NULL