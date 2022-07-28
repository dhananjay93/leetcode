--Tags CASE, MATH
--https://leetcode.com/problems/the-winner-university/
--beats 68%
--Write your MySQL query statement below

SELECT 
CASE 
    WHEN (SELECT COUNT(*) FROM NewYork WHERE score >= 90) > (SELECT COUNT(*) FROM California WHERE score >= 90) THEN 'New York University'
    WHEN (SELECT COUNT(*) FROM NewYork WHERE score >= 90) < (SELECT COUNT(*) FROM California WHERE score >= 90) THEN 'California University'
   ELSE 'No Winner' END AS winner