--Tags aggregate, order by 
--https://leetcode.com/problems/fix-product-name-format/description/
--beats 32%

WITH CTE AS
(
SELECT
    user_id,
    time_stamp,
    LEAD(time_stamp,1) OVER(PARTITION BY user_id ORDER BY time_stamp) ld 
FROM Confirmations
)
SELECT DISTINCT
    user_id
FROM CTE
WHERE timestampdiff(second, time_stamp,ld)<=86400