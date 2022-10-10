--Tags JOIN, Conditioning, CTE, lag
--https://leetcode.com/problems/find-interview-candidates/description/
--beats 12%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT 
    gold_medal id,
    contest_id
FROM Contests 
UNION ALL
SELECT 
    silver_medal id,
    contest_id
FROM Contests
UNION ALL
SELECT 
    bronze_medal id,
    contest_id
FROM Contests
),
CTE2 AS
(
SELECT 
id,
contest_id,
LAG(contest_id,1) OVER(PARTITION BY id ORDER BY contest_id) LAG1,
LAG(contest_id,2) OVER(PARTITION BY id ORDER BY contest_id) LAG2
FROM CTE 
ORDER BY id,contest_id
),
GOLD AS
(
SELECT
    gold_medal id
FROM Contests
GROUP BY gold_medal
HAVING COUNT(*) >= 3
),
ids AS 
(
SELECT * FROM GOLD
UNION ALL
SELECT id FROM CTE2 
WHERE contest_id  = LAG2 + 2
)
SELECT DISTINCT
    Users.name,
    Users.mail
FROM ids
INNER JOIN Users 
ON ids.id = Users.user_id