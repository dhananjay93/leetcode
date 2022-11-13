--Tags CTE, RANK, 
--https://leetcode.com/problems/find-median-given-frequency-of-numbers/description/
--beats 61%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    num,
    frequency,
    SUM(frequency) OVER(ORDER BY num) runningsum,
    #SUM(frequency) OVER(ORDER BY num) - frequency runningfreq,
    (SUM(frequency) OVER())/2 medianNum 
FROM Numbers 
)
select AVG(num) as median
from CTE
where medianNum BETWEEN (runningsum-frequency) and runningsum