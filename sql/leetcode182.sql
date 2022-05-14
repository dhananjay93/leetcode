-- Tags Aggregation, Subquery
--https://leetcode.com/problems/duplicate-emails/
--Beats 18%
-- Write your MySQL query statement below
SELECT email
FROM
(
    SELECT email as Email,count(*) as count_
    FROM Person
    GROUP BY email
) AS temp
WHERE count_ > 1