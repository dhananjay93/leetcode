--Tags  CTE, IFNULL, ROUND
--https://leetcode.com/problems/confirmation-rate/
--beats 58%
--Write your MySQL query statement below

WITH c_rate AS
(
SELECT 
    c.user_id,
    ROUND(SUM(c.action = 'confirmed')/COUNT(c.action),2) confirmation_rate
FROM Confirmations c 
GROUP BY c.user_id
)
SELECT 
    s.user_id,
    IFNULL(c.confirmation_rate,0.00) confirmation_rate
FROM Signups s
LEFT JOIN c_rate c
ON s.user_id = c.user_id

