--Tags CTE, GROUP CONCAT, LIKE
--https://leetcode.com/problems/finding-the-topic-of-each-post/description/
--beats 90%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT DISTINCT post_id, topic_id
FROM Posts p
LEFT JOIN Keywords k
ON CONCAT(' ', content, ' ') LIKE CONCAT('% ', word, ' %')
)
SELECT 
    post_id,
    COALESCE(GROUP_CONCAT(topic_id ORDER BY topic_id),'Ambiguous!') topic      
FROM CTE
GROUP BY post_id