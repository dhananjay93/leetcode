--Tags ROUND, AGGREGATE
--https://leetcode.com/problems/queries-quality-and-percentage/
--beats 55%
--Write your MySQL query statement below

SELECT
    query_name,
    ROUND(SUM(rating/position)/COUNT(*),2) quality,
    ROUND(SUM(CASE WHEN rating  < 3 THEN 1 ELSE 0 END)*100/COUNT(*),2) poor_query_percentage 
FROM Queries 
GROUP BY query_name