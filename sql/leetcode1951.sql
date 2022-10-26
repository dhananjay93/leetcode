--Tags cte, self join
--https://leetcode.com/problems/all-the-pairs-with-the-maximum-number-of-common-followers/description/	
--beats 58%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT
    r1.user_id user1_id ,
    r2.user_id user2_id ,
    COUNT(*) AS counter ,
    RANK() OVER(ORDER BY COUNT(*) DESC) AS rn
FROM Relations r1 
JOIN Relations r2 
ON r1.follower_id  = r2.follower_id AND r1.user_id < r2.user_id
GROUP BY r1.user_id, r2.user_id
ORDER BY counter DESC
)
SELECT 
    user1_id,
    user2_id 
FROM CTE WHERE rn = 1