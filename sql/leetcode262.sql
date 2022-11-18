--Tags conditions, aggregate 
--https://leetcode.com/problems/trips-and-users/description/
--beats 85%
--Write your MySQL query statement below

SELECT 
    request_at Day ,
    ROUND(SUM(CASE WHEN status IN ('cancelled_by_driver','cancelled_by_client') THEN 1 ELSE 0 END)/COUNT(*) ,2)  `Cancellation Rate`
FROM Trips 
WHERE 
(client_id  NOT IN (SELECT users_id FROM Users WHERE banned = 'Yes') AND 
driver_id NOT IN (SELECT users_id FROM Users WHERE banned = 'Yes'))
AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at