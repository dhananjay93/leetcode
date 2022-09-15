--Tags CASE STATEMENT
--https://leetcode.com/problems/friend-requests-i-overall-acceptance-rate/
--beats 35%
--Write your MySQL query statement below

SELECT 
    CASE WHEN COUNT(DISTINCT requester_id,accepter_id) > 0 THEN                 ROUND((SELECT COUNT(DISTINCT requester_id,accepter_id)
    FROM RequestAccepted) / 
    (SELECT COUNT(DISTINCT sender_id,send_to_id)
FROM FriendRequest), 2)
ELSE 0
END AS accept_rate
FROM RequestAccepted