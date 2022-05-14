-- Tags DELETE SELF JOIN
--https://leetcode.com/problems/delete-duplicate-emails/
--Beats 77%
# Write your MySQL query statement below
DELETE q from person p join person q on p.email=q.email and p.id<q.id;