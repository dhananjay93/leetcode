--Tags cte,join, 
--https://leetcode.com/problems/reported-posts-ii/description/
--beats 79%
--Write your MySQL query statement below

WITH CTE AS 
(  
SELECT 
    a.post_id,
    a.action_date,
    r.remove_date
FROM Actions a
LEFT JOIN Removals r
ON a.post_id = r.post_id 
WHERE a.extra  = 'spam'
)
SELECT ROUND(SUM(daily_average)/COUNT(action_date)*100,2) as average_daily_percent
FROM
(
SELECT
    action_date,
    (COUNT(DISTINCT CASE WHEN remove_date IS NOT NULL THEN post_id ELSE NULL END)/COUNT(DISTINCT post_id)) AS daily_average
FROM CTE
GROUP BY action_date
)sb