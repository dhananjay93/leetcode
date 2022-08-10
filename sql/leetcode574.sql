--Tags JOIN SUBQUERY, LIMIT 
--https://leetcode.com/problems/winning-candidate/
--beats 46%
--Write your MySQL query statement below

SELECT c.name FROM Candidate c
LEFT JOIN
(
SELECT 
    candidateId,
    COUNT(*) AS counter
FROM Vote 
GROUP BY candidateId
) a
ON c.id = a.candidateId
ORDER BY a.counter DESC
LIMIT 1