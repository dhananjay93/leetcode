--Tags  CTE, DATEDIFF, MAX, GROUP BY
--https://leetcode.com/problems/biggest-window-between-visits/
--beats 88%
--Write your MySQL query statement below

WITH diff_table AS
(
SELECT 
    user_id,
    visit_date,
    DATEDIFF(visit_date,IFNULL(LEAD(visit_date,1) OVER(PARTITION BY user_id ORDER BY visit_date),'2021-1-1')) diff
FROM UserVisits
)
SELECT 
    user_id,
    MAX(abs(diff)) biggest_window
FROM diff_table
GROUP BY user_id

