--Tags CROSS JOIN, CTE, UNION ALL
--https://leetcode.com/problems/count-the-number-of-experiments/
--beats 30%
--Write your MySQL query statement below

WITH CTE AS
(
  SELECT
    a.platform,
    b.experiment_name
  FROM 
    (
      SELECT 
        'Android' AS platform
      UNION ALL 
      SELECT 
        'IOS' 
      UNION ALL 
      SELECT 
        'Web'
    ) AS a,
    (
      SELECT 
        'Reading' AS experiment_name 
      UNION ALL 
      SELECT 
        'Sports' 
      UNION ALL 
      SELECT 
        'Programming'
    ) AS b
),
COUNTER AS
(
SELECT 
    platform,
    experiment_name,
    COUNT(*) num_experiments 
FROM Experiments
GROUP BY platform,experiment_name
)
SELECT 
    CTE.platform,
    CTE.experiment_name,
    IFNULL(COUNTER.num_experiments,0) num_experiments
FROM CTE
LEFT JOIN COUNTER
ON CTE.platform = COUNTER.platform AND CTE.experiment_name = COUNTER.experiment_name