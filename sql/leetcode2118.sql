--Tags CONCAT, GROUP_CONCAT
--https://leetcode.com/problems/build-the-equation/description/
--beats 84%
--Write your MySQL query statement below

SELECT 
CONCAT(GROUP_CONCAT(sb ORDER BY power DESC SEPARATOR ''), '=0') as equation
FROM
(SELECT
CONCAT(CASE WHEN factor > 0 THEN '+' ELSE '' END,
    factor,
    CASE WHEN power = 0 THEN '' ELSE 'X' END,
    CASE WHEN power IN (0,1) THEN '' ELSE '^' END,
    CASE WHEN power IN (0,1) THEN '' ELSE power END) AS sb,
    power
FROM Terms
)sb1