--Tags subquery, union all, window
--https://leetcode.com/problems/get-the-second-most-recent-activity/
--beats 66%
--Write your MySQL query statement below

SELECT 
    username,
    activity,
    startDate,
    endDate
FROM
(
    SELECT 
        username,
        activity,
        startDate,
        endDate,
        RANK() OVER(PARTITION BY username ORDER BY startDate DESC) rn
    FROM UserActivity 
)sb1
WHERE rn = 2

UNION ALL

SELECT 
    username,
    activity,
    startDate,
    endDate
FROM UserActivity 
WHERE username IN
(
SELECT 
    username
FROM UserActivity 
GROUP BY username
HAVING count(*) = 1
)