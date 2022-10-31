--Tags CASE, MATH
--https://leetcode.com/problems/get-highest-answer-rate-question/description/
--beats 82%
--Write your MySQL query statement below

WITH CTE AS 
(
SELECT 
    question_id,
    SUM(CASE WHEN action = 'show' THEN 1 ELSE 0 END) AS show1,
    SUM(CASE WHEN action = 'answer'THEN 1 ELSE 0 END) AS ans,
    SUM(CASE WHEN action = 'skip' THEN 1 ELSE 0 END) AS skip
FROM SurveyLog 
GROUP BY question_id
)
SELECT 
 question_id survey_log 
FROM CTE
ORDER BY ans/show1 DESC, question_id
LIMIT 1