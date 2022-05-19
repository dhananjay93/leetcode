--Tags JOIN, subdate 
--https://leetcode.com/problems/rising-temperature/submissions/
--beats 74%
-- Write your MySQL query statement below 
SELECT DISTINCT
    W1.id AS Id
FROM Weather W1
LEFT JOIN Weather W2 
ON W1.recordDate = subdate(W2.recordDate ,-1 )
WHERE (W1.temperature - W2.temperature) > 0