--Tags subquery, join, union 
--https://leetcode.com/problems/active-users/description/
--beats 22%
--Write your MySQL query statement below

SELECT
    sb.user_id,
    u.user_name,
    SUM(sb.amount) credit,
    CASE WHEN SUM(sb.amount) >= 0 THEN 'No' ELSE 'Yes' END AS credit_limit_breached 
FROM 
(
SELECT
    user_id ,
    credit amount
FROM Users  
UNION ALL
SELECT
    paid_by user_id ,
    amount*-1 amount
FROM Transactions 
UNION ALL 
SELECT
    paid_to user_id,
    amount
FROM Transactions
)sb
JOIN Users u
ON sb.user_id = u.user_id   
GROUP BY sb.user_id 