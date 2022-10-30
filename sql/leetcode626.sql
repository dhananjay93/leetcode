--Tags CASE, LAG
--https://leetcode.com/problems/exchange-seats/description/
--beats 93%
--Write your MySQL query statement below

SELECT
    id,
    IFNULL(CASE WHEN id%2 = 1 THEN LEAD(student,1) OVER(ORDER BY id)
    ELSE LAG(student,1) OVER(ORDER BY id) END,student) AS student 
FROM Seat 