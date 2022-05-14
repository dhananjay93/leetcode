-- Tags Aggregate
#https://leetcode.com/problems/daily-leads-and-partners/
-- Beats 63%
# Write your MySQL query statement below
SELECT 
 date_id, 
 make_name, 
 COUNT(DISTINCT(lead_id)) AS  unique_leads, 
 COUNT(DISTINCT(partner_id)) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name