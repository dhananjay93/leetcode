--Tags ORDER BY, GROUP BY
--https://leetcode.com/problems/second-degree-follower/
--beats 66%

SELECT 
    followee AS follower ,
    COUNT(*) num
FROM Follow 
WHERE followee IN (SELECT follower FROM Follow)
GROUP BY followee
ORDER BY followee 