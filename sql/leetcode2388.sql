--Tags window function
--https://leetcode.com/problems/change-null-values-in-a-table-to-the-previous-value/description/
--beats 47%

WITH CTE AS
(
SELECT 
    id,
    drink,
    SUM(IF(drink IS NOT NULL,1,0)) OVER(rows BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS null_counter
FROM CoffeeShop
 )
 SELECT 
    id, 
    MAX(drink) OVER(PARTITION BY null_counter) drink
 FROM CTE