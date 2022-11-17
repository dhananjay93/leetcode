--Tags cte, math, logic 
--https://leetcode.com/problems/the-number-of-seniors-and-juniors-to-join-the-company/description/
--beats 93%
--Write your MySQL query statement below

WITH seniors AS 
(
SELECT
    employee_id,
    experience,
    salary,
    runsum
FROM 
(
SELECT
    employee_id,
    experience,
    salary,
    IFNULL(SUM(salary) OVER(ORDER BY salary,employee_id),0) runsum
FROM Candidates 
WHERE experience = 'Senior'
)sb1 WHERE runsum <= 70000
),
juniors AS 
(
SELECT
    employee_id,
    experience,
    salary,
    runsum
FROM 
(
SELECT
    employee_id,
    experience,
    salary,
    SUM(salary) OVER(ORDER BY salary,employee_id) runsum
FROM Candidates 
WHERE experience = 'Junior'
)sb1 
WHERE runsum <= (70000 - IFNULL((SELECT MAX(runsum) FROM seniors),0))
)
SELECT 'Junior' AS experience,COUNT(employee_id) AS accepted_candidates FROM juniors
UNION ALL
SELECT 'Senior' AS experience,COUNT(employee_id) AS accepted_candidates FROM seniors