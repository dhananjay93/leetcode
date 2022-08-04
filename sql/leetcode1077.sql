--Tags  CTE, subquery 
--https://leetcode.com/problems/project-employees-iii/
--beats 52%
--Write your MySQL query statement below

WITH joined_table AS
(
    SELECT 
        project_id,
        employee_id,
        RANK() OVER(PARTITION BY project_id ORDER BY experience_years DESC) AS rn
    FROM 
        (
        SELECT
            p.project_id,
            e.employee_id,
            e.experience_years 
        FROM Project p
        LEFT JOIN Employee e
        ON p.employee_id = e.employee_id
        ) sb
)
SELECT 
    project_id,
    employee_id
FROM joined_table
WHERE rn = 1