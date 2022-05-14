--Tags Joins, CTE
#https://leetcode.com/problems/bank-account-summary-ii/
# Write your MySQL query statement below
WITH TRANS AS
(
SELECT 
    account,
    SUM(amount) AS balance
FROM Transactions
GROUP BY account
)
SELECT 
    Users.name,
    TRANS.balance
FROM Users
LEFT JOIN TRANS
ON Users.account = TRANS.account
WHERE balance > 10000
