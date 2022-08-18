--Tags CTE, JOIN
--https://leetcode.com/problems/count-student-number-in-departments/
--beats 28%
--Write your MySQL query statement below

SELECT 
    d.dept_name,
    IFNULL(s.student_number,0) AS student_number
FROM Department d
LEFT JOIN     
(
SELECT 
    dept_id,
    count(*) AS student_number 
FROM Student 
GROUP BY dept_id
) s
ON d.dept_id  = s.dept_id
ORDER BY student_number DESC, dept_name 