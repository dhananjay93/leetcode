--Tags  CTE, Aggregate, INNER JOIN
--https://leetcode.com/problems/accepted-candidates-from-the-interviews/
--beats 53%
--Write your MySQL query statement below

WITH ts AS
(
    SELECT 
        interview_id,
        SUM(score) AS total_score
    FROM Rounds 
    GROUP BY interview_id
    HAVING total_score > 15
)
SELECT 
    c.candidate_id
FROM Candidates c
INNER JOIN ts 
ON c.interview_id = ts.interview_id
WHERE years_of_exp >= 2