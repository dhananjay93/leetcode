--Tags joins, subquery
--https://leetcode.com/problems/market-analysis-ii/
--beats 67%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT
    o.seller_id,
    o.item_id,
    o.order_date,
    i.item_brand,
    RANK() OVER(PARTITION BY o.seller_id ORDER BY o.order_date) rn
FROM Orders o
LEFT JOIN Items i
ON i.item_id = o.item_id
),
ranks AS
(
SELECT 
    CTE.seller_id,
    CASE WHEN CTE.item_brand =  u.favorite_brand THEN 'yes' ELSE 'no' END AS `2nd_item_fav_brand` 
FROM CTE
LEFT JOIN Users u
ON CTE.seller_id = u.user_id 
WHERE rn = 2
)
SELECT 
    user_id AS seller_id,
    'no' AS `2nd_item_fav_brand`
FROM Users 
WHERE user_id NOT IN (SELECT seller_id FROM ranks)
UNION ALL
SELECT * FROM ranks
