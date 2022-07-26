--Tags Window function
--https://leetcode.com/problems/running-total-for-different-genders/
--beats 84%
--Write your MySQL query statement below

SELECT 
    gender ,
    day,
    SUM(score_points) OVER(PARTITION BY gender ORDER BY day) AS total
FROM Scores
ORDER BY gender, day