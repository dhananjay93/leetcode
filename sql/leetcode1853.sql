--Tags CONCAT, DAYNAME, MONTHNAME
--https://leetcode.com/problems/convert-date-format/
--beats 12%
--Write your MySQL query statement below

SELECT CONCAT(DAYNAME(day), ',',' ',MONTHNAME(day), ' ',DAY(day),',',' ',YEAR(day)) AS day
FROM days