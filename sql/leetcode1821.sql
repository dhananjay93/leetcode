--Tags Conditioning
--https://leetcode.com/problems/find-customers-with-positive-revenue-this-year/
--beats 40%
--Write your MySQL query statement below

SELECT
    customer_id
FROM Customers
WHERE year = '2021' AND revenue > 0 