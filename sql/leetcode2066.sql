--Tags ORDER BY, WINDOW, AGGREGATE
--https://leetcode.com/problems/account-balance/
--beats 6%

SELECT 
    account_id,
    day,
    SUM(CASE WHEN type = 'Deposit' THEN amount ELSE -amount END) OVER(partition by account_id order by account_id, day) as balance
FROM Transactions
GROUP BY account_id, day
ORDER BY account_id, day