--Tags IFNULL, ROUND, CASE
--https://leetcode.com/problems/ads-performance/
--beats 50%
--Write your MySQL query statement below

SELECT 
    ad_id,
    IFNULL(ROUND(SUM(CASE WHEN action = 'Clicked' THEN 1 ELSE 0 END)/
    (SUM(CASE WHEN action = 'Clicked' THEN 1 ELSE 0 END) + SUM(CASE WHEN action = 'Viewed' THEN 1 ELSE 0 END))*100,2),0) AS ctr
FROM Ads 
GROUP BY ad_id
ORDER BY ctr DESC, ad_id ASC