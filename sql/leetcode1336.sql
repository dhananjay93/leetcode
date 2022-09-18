--Tags joins, subquery, aggregation
--https://leetcode.com/problems/number-of-transactions-per-visit/
--beats 54%
--Write your MySQL query statement below

WITH CTE AS 
(
    SELECT
        v.user_id,
        SUM(IF(transaction_date IS NULL, 0, 1)) AS cnt
    FROM Visits v
    LEFT JOIN Transactions t ON v.user_id = t.user_id AND visit_date = transaction_date
    GROUP BY user_id, visit_date
),
CTE2 AS
(
SELECT 
    cnt AS transactions_count ,
    COUNT(*) visits_count 
FROM CTE
GROUP BY transactions_count 
),
CTE3 AS
(
    WITH RECURSIVE seq (n) AS 
    (
        SELECT 0

        UNION ALL

        SELECT n + 1
        FROM seq
        WHERE n < (SELECT MAX(transactions_count) FROM CTE2)
    )
    SELECT n FROM seq
)
SELECT
    n AS transactions_count,
    COALESCE(visits_count, 0) AS visits_count
FROM CTE3
LEFT JOIN CTE2 ON n = transactions_count
ORDER BY transactions_count