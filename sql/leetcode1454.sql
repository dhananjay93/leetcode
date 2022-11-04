--Tags CTE, JOINS, LAG
--https://leetcode.com/problems/active-users/description/
--beats 65%
--Write your MySQL query statement below

WITH CTE AS 
(
    SELECT DISTINCT l.id, l.login_date , a.name
    from Logins l
    JOIN Accounts a 
    ON l.id = a.id
),
CTE2 AS
(
SELECT
    id,
    name,
    login_date,
    LAG(login_date,4) OVER(PARTITION BY id ORDER BY login_date) past_5,
    datediff(login_date,LAG(login_date,4) OVER(PARTITION BY id ORDER BY login_date)) differ
FROM CTE
)
SELECT DISTINCT id,name FROM CTE2 WHERE differ = 4