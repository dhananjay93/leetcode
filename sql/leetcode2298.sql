--Tags  CASE statement 
--https://leetcode.com/problems/tasks-count-in-the-weekend/
--beats 39%
--Write your MySQL query statement below

SELECT

SUM(CASE WHEN WEEKDAY(submit_date)>= 5 THEN 1 ELSE 0 END) AS weekend_cnt,
SUM(CASE WHEN WEEKDAY(submit_date) < 5 THEN 1 ELSE 0 END) AS working_cnt

FROM Tasks 