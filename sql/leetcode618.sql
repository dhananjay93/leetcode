--Tags CTE, ROW_NUMBER
--https://leetcode.com/problems/students-report-by-geography/description/
--beats 65%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    CASE WHEN continent = 'America' THEN name END AS America,
    CASE WHEN continent = 'Asia' THEN name END AS Asia,
    CASE WHEN continent = 'Europe' THEN name END AS Europe,
    ROW_NUMBER() OVER(PARTITION BY continent ORDER BY name) rn
FROM Student 
)
SELECT 
    MIN(America) America, 
    MIN(Asia) Asia, 
    MIN(Europe) Europe 
FROM CTE
GROUP BY rn