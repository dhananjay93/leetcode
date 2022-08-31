--Tags count distinct, AGGREGATE 
--https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
--beats 42%
--Write your MySQL query statement below

SELECT 
    teacher_id,
    COUNT(DISTINCT subject_id ) AS cnt 
FROM Teacher 
GROUP BY teacher_id