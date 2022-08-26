--Tags CTE, JOIN
--https://leetcode.com/problems/page-recommendations/
--beats 21%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT user2_id AS user_id 
    FROM Friendship
    WHERE user1_id=1 
    UNION ALL
    SELECT user1_id AS user_id FROM Friendship
    WHERE user2_id=1
)
SELECT DISTINCT page_id AS recommended_page
FROM Likes 
WHERE user_id IN (SELECT * from CTE)
AND page_id NOT IN (SELECT page_id FROM Likes WHERE user_id=1)