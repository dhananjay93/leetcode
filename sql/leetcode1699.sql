--Tags LEAST, GREATEST, GROUP BY
--https://leetcode.com/problems/number-of-calls-between-two-persons/
--beats 55%
--Write your MySQL query statement below

SELECT 
    LEAST(to_id,from_id) AS person1,
    GREATEST(to_id,from_id) AS person2,
    COUNT(*) AS call_count,
    SUM(duration) AS total_duration
FROM Calls
GROUP BY person1,person2