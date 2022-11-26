--Tags CTE, GROUP BY , JOINS
--https://leetcode.com/problems/leetcodify-similar-friends/description/
--beats 96%
--Write your MySQL query statement below

WITH CTE1 AS 
(
    SELECT 
        user1_id,
        user2_id
    FROM Friendship 
    UNION ALL 
     SELECT 
        user2_id user1_id,
        user1_id user2_id
    FROM Friendship   
),
CTE2 AS
(
SELECT 
    l1.user_id user1_id,
    l2.user_id user2_id
FROM Listens l1
JOIN Listens l2 
WHERE l1.user_id < l2.user_id AND l1.song_id = l2.song_id AND l1.day = l2.day
GROUP BY l1.user_id,l2.user_id,l1.day
HAVING COUNT(DISTINCT l1.song_id) >=3
)
SELECT DISTINCT
    CTE2.user1_id,
    CTE2.user2_id
FROM CTE2
JOIN CTE1 
ON CTE2.user1_id = CTE1.user1_id AND CTE2.user2_id = CTE1.user2_id