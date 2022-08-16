--Tags GROUP BY, DATE SUB, SUBQUERY
--https://leetcode.com/problems/new-users-daily-count/
--beats 59%
--Write your MySQL query statement below

SELECT 
    login_date,
    COUNT(*) user_count
FROM
(
SELECT user_id, MIN(activity_date) AS login_date
FROM traffic
WHERE activity = "login"
GROUP BY user_id
)sb1
WHERE login_date >= DATE_SUB('2019-06-30',INTERVAL 90 DAY)
GROUP BY login_date