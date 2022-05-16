--Tags aggregate, subquery frm other table
--https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
--beats 44%
-- Write your MySQL query statement below
SELECT 
    customer_id,
    COUNT(visit_id) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions )
GROUP BY customer_id
ORDER BY count_no_trans DESC