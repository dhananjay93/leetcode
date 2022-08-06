--Tags  CTE, LEFT JOIN, Calculation
--https://leetcode.com/problems/the-category-of-each-member-in-the-store/
--beats 25%
--Write your MySQL query statement below

WITH CTE AS
(
    SELECT 
        m.member_id,
        m.name,
        IFNULL(v.visit_id,0) visit_id,
        IFNULL(p.charged_amount,0) charged_amount
    FROM Visits v
    RIGHT JOIN Members m ON  m.member_id = v.member_id
    LEFT JOIN Purchases p ON v.visit_id = p.visit_id
)
SELECT
    member_id,
    name,
    CASE
     WHEN visit_id = 0 THEN 'Bronze'
     WHEN pur/cnt >= 0.8 THEN 'Diamond' 
     WHEN pur/cnt >= 0.5 THEN 'Gold' 
     WHEN cnt >= 1 THEN 'Silver' 
     ELSE  'Bronze' END category 
FROM
(
    SELECT 
    member_id,
    name,
    visit_id,
    COUNT(*) cnt,
    SUM(CASE WHEN charged_amount > 0 THEN 1 ELSE 0 END) pur
    FROM CTE
    GROUP BY member_id,name
)sb
ORDER BY member_id