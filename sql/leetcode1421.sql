--Tags left join,ifnull 
--https://leetcode.com/problems/npv-queries/
--beats 29%
--Write your MySQL query statement below

SELECT
    q.id,
    q.year,
    IFNULL(n.npv,0) AS npv
FROM Queries q
LEFT JOIN NPV n
ON q.id = n.id AND q.year = n.year