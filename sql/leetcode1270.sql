--Tags subqueries, union all 
--https://leetcode.com/problems/all-people-report-to-the-given-manager/description/ 	
--beats 47%
--Write your MySQL query statement below

SELECT DISTINCT employee_id FROM 
(
SELECT employee_id FROM Employees  WHERE manager_id  = 1
UNION ALL 
SELECT employee_id FROM Employees WHERE manager_id IN (SELECT employee_id FROM Employees  WHERE manager_id  = 1)
UNION ALL 
SELECT employee_id FROM Employees WHERE manager_id IN  (SELECT employee_id FROM Employees WHERE manager_id IN (SELECT employee_id FROM Employees  WHERE manager_id  = 1))
) sb
WHERE employee_id != 1