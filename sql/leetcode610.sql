--Tags CASE WHEN
--https://leetcode.com/problems/triangle-judgement/
--beats 54%
--Write your MySQL query statement below

SELECT
    x,
    y,
    z,
    CASE WHEN x + y > z  AND x + z > y AND y + z > x
    THEN 'Yes' ELSE 'No' END AS triangle  
FROM Triangle 