--Tags CTE, SELF JOIN
--https://leetcode.com/problems/average-salary-departments-vs-company/description/
--beats 79%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT
    s.employee_id,
    e.department_id,
    s.amount,
    CONCAT(LEFT(s.pay_date,4),'-',MID(s.pay_date,6,2)) pay_month
FROM Salary s
LEFT JOIN Employee e
ON s.employee_id = e.employee_id 
),
dep AS
(
SELECT 
    department_id,
    pay_month,
    SUM(amount)/COUNT(*) AS dep_avg
FROM CTE
GROUP BY department_id, pay_month
),
comp AS
(
SELECT 
    CTE.pay_month,
    SUM(CTE.amount)/COUNT(*) AS comp_sal
FROM CTE
GROUP BY CTE.pay_month
)
SELECT 
    dep.pay_month,
    dep.department_id,
    CASE WHEN dep.dep_avg < comp.comp_sal THEN 'lower'
    WHEN dep.dep_avg = comp.comp_sal THEN 'same'
    WHEN dep.dep_avg > comp.comp_sal THEN 'higher' END AS comparison 
FROM dep
JOIN comp
ON dep.pay_month = comp.pay_month