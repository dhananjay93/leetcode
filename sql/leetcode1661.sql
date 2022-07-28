--Tags CTE, WINDOW, LAG
--https://leetcode.com/problems/average-time-of-process-per-machine/
--beats 17%
--Write your MySQL query statement below

WITH t AS
(
    SELECT 
        machine_id,
        activity_type,
        timestamp,
        timestamp - LAG(timestamp,1) OVER(PARTITION BY machine_id , process_id ORDER BY machine_id, process_id, activity_type ) AS lag_value
    FROM Activity
)
SELECT
    machine_id,
    ROUND(AVG(lag_value),3) AS processing_time 
FROM t
WHERE activity_type = 'end'
GROUP BY machine_id