--Tags Window, CTE
--https://leetcode.com/problems/maximum-transaction-each-day/
--beats 10%
--Write your MySQL query statement below

WITH day_conc AS
(
    SELECT 
        transaction_id,
        CONCAT(YEAR(day),MONTH(day),DAY(day)) AS day_conc,
        amount
    FROM Transactions
)
SELECT transaction_id
FROM 
(
    SELECT 
    transaction_id,
    RANK() OVER(PARTITION BY day_conc ORDER BY amount DESC) rn
    FROM day_conc
) a
WHERE rn = 1
ORDER BY transaction_id ASC