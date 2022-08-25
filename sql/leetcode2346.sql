--Tags CTE, JOINS, ANALYTICAL
--https://leetcode.com/problems/compute-the-rank-as-a-percentage/
--beats 6%
--Write your MySQL query statement below

# Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    department_id,
    COUNT(*) AS counter
FROM Students 
GROUP BY department_id
)
SELECT 
    s.student_id,
    s.department_id,
    IFNULL(ROUND((RANK() OVER(PARTITION BY s.department_id ORDER BY s.mark DESC) - 1)*100/(CTE.counter-1),2),0) percentage
FROM Students s
LEFT JOIN CTE
ON CTE.department_id = s.department_id