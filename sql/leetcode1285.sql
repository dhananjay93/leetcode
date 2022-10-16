--Tags puzzle, 
--https://leetcode.com/problems/find-the-start-and-end-number-of-continuous-ranges/description/
--beats 11%
--Write your MySQL query statement below

SELECT 
    MIN(log_id) start_id, 
    MAX(log_id) end_id
FROM
(
SELECT 
    log_id, 
    ROW_NUMBER() OVER(ORDER BY log_id) AS row_num
FROM Logs
) sb 
GROUP BY log_id - row_num