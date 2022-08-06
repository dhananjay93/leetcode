--Tags AGGREGATION
--https://leetcode.com/problems/monthly-transactions-i/
--beats 77%
--Write your MySQL query statement below

SELECT 
    LEFT(trans_date,7) AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) approved_total_amount 
FROM Transactions
GROUP BY month,country