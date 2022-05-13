---Learnings Window Functions, DENSE_RANK
#https://leetcode.com/problems/rank-scores/
# Write your MySQL query statement below
SELECT
    score,
    (DENSE_RANK() OVER(ORDER BY score DESC)) AS `rank`
FROM Scores
ORDER BY score DESC;