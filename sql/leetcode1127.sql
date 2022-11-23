--Tags CTE, JOINS
--https://leetcode.com/problems/user-purchase-platform/description/
--beats 58%
--Write your MySQL query statement below

WITH platforms AS
(
    SELECT 'desktop' AS platform
    UNION ALL 
    SELECT 'mobile' AS platform
    UNION ALL 
    SELECT 'both' AS platform
),
baseTable AS
(
    SELECT DISTINCT s.spend_date,p.platform FROM Spending s,platforms p
),
COUNTER AS 
(
SELECT 
    spend_date,
    user_id,
    COUNT(*) counter,
    SUM(amount) AS total_amount
FROM Spending 
GROUP BY spend_date,user_id
#HAVING counter = 1
),
joinedTable AS 
(
SELECT 
    c1.spend_date,
    s.platform,
    c1.total_amount,
    c1.counter total_users
FROM COUNTER c1
LEFT JOIN Spending s
ON s.spend_date = c1.spend_date AND c1.user_id = s.user_id
WHERE c1.counter = 1

UNION ALL

SELECT 
    spend_date,
    'both' AS platform,
    total_amount,
    COUNT(DISTINCT user_id) AS total_users 
FROM COUNTER
WHERE counter = 2
GROUP BY spend_date, platform
) 
SELECT 
    b.spend_date,
    b.platform,
    IFNULL(SUM(j.total_amount),0) total_amount ,
    IFNULL(SUM(j.total_users),0) total_users
FROM baseTable b
LEFT JOIN joinedTable j
ON b.spend_date = j.spend_date  AND b.platform = j.platform
GROUP BY b.spend_date, b.platform