--Tags CTE,TIMESTAMPDIFF
--https://leetcode.com/problems/users-that-actively-request-confirmation-messages/description/
--beats 66%

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