--Tags  window function 
--https://leetcode.com/problems/arrange-table-by-gender/
--beats 34%
--Write your MySQL query statement below

SELECT 
    user_id, 
    gender
FROM genders
ORDER BY DENSE_RANK() OVER(PARTITION BY gender ORDER BY user_id ASC), LENGTH(gender) DESC