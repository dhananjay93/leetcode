--Tags CTE, IFNULL, sorting 
#https://leetcode.com/problems/top-travellers/
# Write your MySQL query statement below
WITH rides_mod AS
(
SELECT 
    user_id,
    SUM(distance) AS travelled_distance
FROM Rides
GROUP BY user_id
)
SELECT 
    Users.name,
    IFNULL(rides_mod.travelled_distance,0) AS travelled_distance
FROM Users
LEFT JOIN rides_mod
ON Users.id = rides_mod.user_id
ORDER BY travelled_distance DESC, name