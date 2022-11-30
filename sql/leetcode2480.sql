--Tags CTE, CROSS JOIN
--https://leetcode.com/problems/form-a-chemical-bond/description/
--beats 57%
--Write your MySQL query statement below

WITH CTE1 AS
(
SELECT DISTINCT symbol AS 'metal' FROM Elements  WHERE type = 'Metal'
),
CTE2 AS
(
SELECT DISTINCT symbol AS 'nonmetal' FROM Elements  WHERE type = 'Nonmetal'  
)
SELECT metal, nonmetal FROM CTE1,CTE2