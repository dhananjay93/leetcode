--Tags  CTE, Window
--https://leetcode.com/problems/last-person-to-fit-in-the-bus/
--beats 33%
--Write your MySQL query statement below

WITH cte AS
(
    SELECT person_name, w_sum
    FROM
        (
        SELECT
            person_name,
            SUM(weight) OVER(ORDER BY turn ASC) w_sum
        FROM Queue
        )sb
    WHERE w_sum <= 1000
)
SELECT person_name 
FROM cte 
WHERE w_sum = (SELECT MAX(w_sum) FROM cte)




