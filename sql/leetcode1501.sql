--Tags CTE, JOINS, AGGREGATIONS
--https://leetcode.com/problems/countries-you-can-safely-invest-in/description/
--beats 49%

WITH CTE AS
(
SELECT
    c.name country,
    c.country_code,
    p.id,
    p.name AS person
FROM Country c
RIGHT JOIN Person p 
ON c.country_code = LEFT(P.phone_number,3)
),
CTE1 AS
(
SELECT caller_id cid, duration FROM Calls 
UNION ALL
SELECT callee_id cid, duration FROM Calls
)
SELECT 
    CTE.country
FROM CTE1
LEFT JOIN CTE
ON CTE1.cid = CTE.id
GROUP BY CTE.country
HAVING SUM(CTE1.duration)/COUNT(*) > (SELECT SUM(duration)/COUNT(*) FROM Calls)