--Tags self join, math
--https://leetcode.com/problems/find-cutoff-score-for-each-school/description/
--beats 59%
--Write your MySQL query statement below

SELECT
    s.school_id,
    COALESCE(MIN(score), -1) as score
FROM Schools s
LEFT JOIN Exam e
ON e.student_count<=s.capacity
GROUP BY s.school_id