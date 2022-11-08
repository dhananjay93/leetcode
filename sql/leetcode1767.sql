--Tags CROSS JOIN, Recursion
--https://leetcode.com/problems/find-the-subtasks-that-did-not-execute/description/
--beats 27%
--Write your MySQL query statement below

WITH recursive CTE AS 
(
    SELECT 1 AS rnk 
    UNION 
    SELECT rnk + 1 FROM CTE 
    WHERE rnk < (SELECT MAX(subtasks_count) FROM Tasks)
),
all_tasks AS
(
SELECT 
    task_id,
    rnk
FROM Tasks ,CTE
WHERE subtasks_count >= rnk
ORDER BY task_id
)
SELECT 
    a.task_id, 
    a.rnk subtask_id 
FROM all_tasks a
LEFT JOIN Executed e 
ON a.task_id = e.task_id AND a.rnk = e.subtask_id 
WHERE subtask_id IS NULL
ORDER BY task_id 