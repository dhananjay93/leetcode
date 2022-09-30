--Tags aggregate, order by 
--https://leetcode.com/problems/fix-product-name-format/description/
--beats 32%

SELECT 
    TRIM(LOWER(product_name )) product_name,
    LEFT(sale_date, 7) sale_date ,
    COUNT(*) total 
FROM Sales 
GROUP BY TRIM(LOWER(product_name )),LEFT(sale_date, 7) 
ORDER BY product_name , sale_date