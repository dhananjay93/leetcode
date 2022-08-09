--Tags AGGREGATE, DISTINCT
--https://leetcode.com/problems/article-views-ii/
--beats 41%
--Write your MySQL query statement below

SELECT 
    DISTINCT viewer_id id
FROM Views 
GROUP BY view_date, viewer_id
HAVING COUNT(DISTINCT article_id) > 1
ORDER BY id