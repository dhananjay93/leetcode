--Tags CTE, UNION ALL, MATH
--https://leetcode.com/problems/total-sales-amount-by-year/description/
--beats 89%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    product_id, 
    '2018' AS report_year,
    (DATEDIFF(LEAST(period_end, '2018-12-31'), GREATEST(period_start, '2018-01-01'))+1)*average_daily_sales  AS total_amount
FROM Sales
WHERE YEAR(period_start)=2018 OR YEAR(period_end)=2018

UNION ALL

SELECT 
    product_id, 
    '2019' AS report_year,
    (DATEDIFF(LEAST(period_end, '2019-12-31'), GREATEST(period_start, '2019-01-01'))+1)*average_daily_sales  AS total_amount
FROM Sales
WHERE YEAR(period_start)<=2019 OR YEAR(period_end)>=2019

UNION ALL 

SELECT 
    product_id, 
    '2020' AS report_year,
    (DATEDIFF(LEAST(period_end, '2020-12-31'), GREATEST(period_start, '2020-01-01'))+1)*average_daily_sales  AS total_amount
FROM Sales
WHERE YEAR(period_start)=2020 OR YEAR(period_end)=2020
)

SELECT 
    c.product_id,
    p.product_name,
    c.report_year,
    c.total_amount
FROM CTE c
JOIN Product p
ON c.product_id = p.product_id
WHERE c.total_amount >= 0
ORDER BY product_id,report_year