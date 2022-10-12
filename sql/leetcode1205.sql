--Tags CTE, CASE, SUBQUERY
--https://leetcode.com/problems/monthly-transactions-ii/description/
--beats 41%
--Write your MySQL query statement below

SELECT 
    month, 
    country, 
    SUM(CASE WHEN state = 'approved' THEN counter ELSE 0 END) AS approved_count,
    SUM(CASE WHEN state = 'approved' THEN amount  ELSE 0 END) AS approved_amount,
    SUM(CASE WHEN state = 'cbk' THEN counter ELSE 0 END) AS chargeback_count,
    SUM(CASE WHEN state = 'cbk' THEN amount  ELSE 0 END) AS chargeback_amount
FROM
(
SELECT 
    t.country country,
    LEFT(c.trans_date,7) month,
    t.amount amount,
    1 AS counter,
    'cbk' AS state 
FROM Chargebacks c
INNER JOIN Transactions t
ON t.id  = c.trans_id 
UNION ALL
SELECT 
    country ,
    LEFT(trans_date,7) month,
    amount,
    1 AS counter,
    'approved' AS state 
FROM Transactions 
WHERE state = 'approved'
) sb
GROUP BY month, country