--Tags  CTE, IS NULL, Recursion
--https://leetcode.com/problems/find-the-missing-ids/
--beats 13%
--Write your MySQL query statement below

WITH recursive tbl AS
(
    SELECT 1 AS id
    UNION ALL
    SELECT id + 1 AS id
    FROM tbl
    WHERE id < (SELECT MAX(customer_id) FROM Customers )
)
SELECT tbl.id as ids
FROM tbl
LEFT JOIN Customers c
ON tbl.id = c.customer_id
WHERE c.customer_name IS NULL

