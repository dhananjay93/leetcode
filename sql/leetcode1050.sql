--Learnings Subquery, Aliasing
#https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
# Write your MySQL query statement below
SELECT 
    actor_id,
    director_id
FROM
(
SELECT 
    actor_id,
    director_id,
    COUNT(*) AS COUNTER
FROM ActorDirector
GROUP BY actor_id,director_id
) T 
WHERE COUNTER >= 3