--Tags self join, math
--https://leetcode.com/problems/rectangles-area/description/
--beats 25%
--Write your MySQL query statement below

SELECT
    p1.id P1,
    p2.id P2,
    ABS((p1.x_value - p2.x_value)*(p1.y_value - p2.y_value)) AREA
FROM Points p1
JOIN Points p2
ON p1.x_value != p2.x_value AND p1.y_value != p2.y_value AND p1.id < p2.id
ORDER BY AREA DESC,P1, P2