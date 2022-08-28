--Tags self join
--https://leetcode.com/problems/shortest-distance-in-a-plane/
--beats 75%
--Write your MySQL query statement below

SELECT DISTINCT
    l1.account_id
FROM LogInfo l1
INNER JOIN LogInfo l2
ON l1.account_id = l2.account_id  AND l1.ip_address <>  l2.ip_address 
AND l1.logout BETWEEN l2.login AND l2.logout