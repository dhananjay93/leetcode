--Tags JOIN, Conditioning
--https://leetcode.com/problems/number-of-comments-per-post/description/
--beats 86%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT DISTINCT 
    sub_id ,
    parent_id  
FROM Submissions 
),
CTE1 AS
(
SELECT 
    parent_id ,
    COUNT(*) AS number_of_comments
 FROM CTE
 GROUP BY parent_id 
),
CTE2 AS
(
SELECT DISTINCT
    sub_id AS post_id
 FROM Submissions 
 WHERE parent_id IS NULL
)
SELECT
    CTE2.post_id,
    IFNULL(CTE1.number_of_comments,0) number_of_comments
FROM CTE2
LEFT JOIN CTE1
ON CTE1.parent_id = CTE2.post_id
ORDER BY post_id