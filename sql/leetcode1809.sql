--Tags JOINS, CONDITIONING
--https://leetcode.com/problems/ad-free-sessions/
--beats 40%
--Write your MySQL query statement below

SELECT DISTINCT session_id
FROM Playback
WHERE session_id NOT IN 
(
    SELECT
        p.session_id
    FROM Playback p
    INNER JOIN Ads a
    ON p.customer_id = a.customer_id
    WHERE p.start_time <= a.timestamp AND  p.end_time >= a.timestamp
)