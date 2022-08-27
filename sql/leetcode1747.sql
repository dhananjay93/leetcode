--Tags self join
--https://leetcode.com/problems/leetflex-banned-accounts/
--beats 61%
--Write your MySQL query statement below

SELECT DISTINCT
    l1.account_id
FROM LogInfo l1
INNER JOIN LogInfo l2
ON l1.account_id = l2.account_id  AND l1.ip_address <>  l2.ip_address 
AND l1.logout BETWEEN l2.login AND l2.logout