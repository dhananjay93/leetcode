--Tags regex
--https://leetcode.com/problems/find-users-with-valid-e-mails/
--beats 9%
--Write your MySQL query statement below

SELECT user_id,name,mail
FROM users
WHERE mail REGEXP("^[A-Z|a-z][ 0-9A-Za-z\\-\\.\\_]*@leetcode\\.com$")