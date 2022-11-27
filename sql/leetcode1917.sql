--Tags CTE, GROUP BY , JOINS, CONCAT
--https://leetcode.com/problems/leetcodify-friends-recommendations/description/
--beats 88%
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
    l2.user_id user2_id,
    COUNT(DISTINCT l1.song_id)
FROM Listens l1
JOIN Listens l2 
WHERE l1.user_id < l2.user_id AND l1.song_id = l2.song_id AND l1.day = l2.day
GROUP BY l1.user_id,l2.user_id,l1.day
HAVING COUNT(DISTINCT l1.song_id) >=3
)
#Logic referenced from https://leetcode.com/problems/leetcodify-friends-recommendations/solutions/2324593#/3-ctes-with-some-explanation-on-my-logic/
SELECT
C2.user1_id user_id ,
C2.user2_id "recommended_id"
FROM CTE2 C2
WHERE CONCAT(C2.user1_id,' ',C2.user2_id) NOT IN (SELECT CONCAT(user1_id,' ',user2_id) FROM CTE1)
UNION
SELECT
C2.user2_id user_id ,
C2.user1_id "recommended_id"
FROM CTE2 C2
where concat(C2.user2_id,' ',C2.user1_id) not in (select concat(user1_id,' ',user2_id) from CTE1)