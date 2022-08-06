--Tags  CTE, AGGREGATE
--https://leetcode.com/problems/highest-grade-for-each-student/
--beats 71%
--Write your MySQL query statement below

SELECT 
    student_id,
    MIN(course_id) course_id,
    grade
FROM 
(
    SELECT
        student_id,
        course_id,
        grade,
        RANK() OVER(PARTITION BY student_id ORDER BY grade DESC )  rn
    FROM Enrollments
)sb
WHERE rn = 1
GROUP BY student_id