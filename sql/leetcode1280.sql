--Tags JOIN, AGGREGATE 
--https://leetcode.com/problems/students-and-examinations/
--beats 55%
--Write your MySQL query statement below

with c as
(
SELECT DISTINCT
    st.student_id,
    st.student_name,
    s.subject_name 
FROM Students st, Subjects s
),
t2 AS
(
SELECT 
    e.student_id,
    s.student_name,
    e.subject_name,
    COUNT(*) attended_exams 
FROM Examinations e
LEFT JOIN Students s
ON e.student_id = s.student_id
GROUP BY e.student_id, e.subject_name 
)
SELECT 
    c.student_id,
    c.student_name,
    c.subject_name,
    IFNULL(t2.attended_exams,0) attended_exams
FROM c
LEFT JOIN t2 
ON c.student_id = t2.student_id AND c.subject_name = t2.subject_name
ORDER BY student_id,subject_name