--Tags CTE, GROUP BY, RANK
--https://leetcode.com/problems/sales-analysis-i/
--beats 60%
--Write your MySQL query statement below

WITH S AS
(
    SELECT 
        seller_id,
        SUM(price) AS selling_price
    FROM Sales
    GROUP BY seller_id  
),
RANKS AS
(
    SELECT 
        seller_id,
        RANK() OVER(ORDER BY selling_price DESC) AS rn
    FROM S
)
SELECT seller_id FROM RANKS WHERE rn = 1