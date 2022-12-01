--Tags JOINS
--https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/
--beats 35%
--Write your MySQL query statement below

SELECT 
    b1.employee_id,
    b1.name,
    sb.reports_count,
    sb.average_age
FROM Employees b1
JOIN (SELECT reports_to , ROUND(AVG(age),0) average_age,COUNT(*) reports_count FROM Employees WHERE reports_to IS NOT NULL GROUP BY reports_to)sb
ON b1.employee_id = sb.reports_to
GROUP BY b1.employee_id,b1.name
ORDER BY b1.employee_id