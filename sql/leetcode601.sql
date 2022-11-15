--Tags Temp converter  
--https://leetcode.com/problems/human-traffic-of-stadium/description/
--beats 28%
--Write your MySQL query statement below

SELECT
    id,
    visit_date,
    people
FROM 
(
SELECT 
    id,
    visit_date,
    people,
    LAG(people,2) OVER(ORDER BY id) LAG2,
    LAG(people,1) OVER(ORDER BY id) LAG1,
    LEAD(people,2) OVER(ORDER BY id) LEAD2,
    LEAD(people,1) OVER(ORDER BY id) LEAD1
FROM Stadium 
)sb
WHERE (LAG2>=100 AND LAG1 >= 100 AND people >= 100)
OR (LEAD1>=100 AND LAG1 >= 100 AND people >= 100)
OR (LEAD2>=100 AND LEAD1 >= 100 AND people >= 100)
ORDER BY visit_date