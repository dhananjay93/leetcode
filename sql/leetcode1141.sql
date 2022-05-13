-- Learnings SUBDATE function
#https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
# Write your MySQL query statement below
SELECT 
    activity_date AS day,
    COUNT(DISTINCT(user_id)) AS active_users 
FROM Activity
WHERE SUBDATE(activity_date,30)>='2019-05-29'
GROUP BY day