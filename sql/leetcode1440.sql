--Tags  CTE, BOOLEAN
--https://leetcode.com/problems/evaluate-boolean-expression/
--beats 79%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT
        e.left_operand,
        e.operator,
        e.right_operand,
        v.value left_value,
        v1.value right_value
    FROM Expressions e
    LEFT JOIN Variables v ON e.left_operand = v.name
    LEFT JOIN Variables v1 ON right_operand  = v1.name
)
SELECT 
    left_operand,
    operator,
    right_operand,
    CASE WHEN 
    (CASE WHEN operator = '>' THEN (left_value > right_value)
    WHEN operator = '<' THEN (left_value < right_value)
    ELSE (left_value = right_value) END)  = 1 THEN 'true' ELSE 'false' END value
FROM CTE