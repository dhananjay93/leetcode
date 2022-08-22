--Tags subquery, ANALYTICAL
--https://leetcode.com/problems/users-with-two-purchases-within-seven-days/
--beats 50%
--Write your MySQL query statement below

SELECT DISTINCT
    user_id
FROM 
(
    SELECT
        user_id,
        purchase_date,
        DATEDIFF(LEAD(purchase_date,1) OVER(PARTITION BY user_id ORDER BY purchase_date),purchase_date) <= 7 ld
    FROM Purchases
    ORDER BY user_id,purchase_date
)sb1
WHERE ld = 1
ORDER BY user_id