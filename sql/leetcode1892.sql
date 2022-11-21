--Tags union, joins
--https://leetcode.com/problems/page-recommendations-ii/description/
--beats 28%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT 
    user1_id user,
    user2_id friend 
FROM Friendship 
UNION ALL
SELECT 
    user2_id user,
    user1_id friend 
FROM Friendship 
)
SELECT 
    c.user user_id ,
    #c.friend,
    l.page_id page_id ,
    COUNT(*) friends_likes 
FROM CTE c
LEFT JOIN Likes l
ON c.friend = l.user_id
LEFT JOIN Likes l1 ON c.user = l1.user_id  AND l.page_id = l1.page_id
WHERE l1.page_id IS NULL
GROUP BY user,page_id