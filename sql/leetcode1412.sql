--Tags CTE,Window
--https://leetcode.com/problems/find-the-quiet-students-in-all-exams/
--beats 13%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT 
    s.student_id,
    s.student_name,
    e.exam_id,
    e.score         
FROM Student s
LEFT JOIN Exam e
ON s.student_id = e.student_id
WHERE e.exam_id IS NOT NULL
),
CTE1 AS
(
SELECT 
    student_id,
    student_name,
    exam_id,
    score,
    MAX(score) OVER(PARTITION BY exam_id,student_id) mx_st,
    MIN(score) OVER(PARTITION BY exam_id,student_id) mn_st,
    MAX(score) OVER(PARTITION BY exam_id) mx_exam,
    MIN(score) OVER(PARTITION BY exam_id) mn_exam
FROM CTE
)
SELECT distinct
    student_id,
    student_name
FROM CTE1 
WHERE student_id NOT IN
(SELECT student_id
FROM CTE1
WHERE mx_st = mx_exam OR mn_st = mn_exam
)
ORDER BY student_id