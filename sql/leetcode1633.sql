--Tags aggregation
--https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/
--beats 66%

SELECT
    contest_id,
    ROUND(COUNT(user_id)*100/(SELECT COUNT(DISTINCT user_id ) FROM Users),2) percentage  
FROM Register 
GROUP BY contest_id
ORDER BY percentage DESC, contest_id 