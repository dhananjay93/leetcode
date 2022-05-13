-- Learnings CONCAT, Substring
#https://leetcode.com/problems/fix-names-in-a-table/
# Write your MySQL query statement below
SELECT
 user_id, 
 CONCAT(UPPER(MID(name,1,1)),LOWER(MID(name,2))) AS name 
FROM users
ORDER BY user_id