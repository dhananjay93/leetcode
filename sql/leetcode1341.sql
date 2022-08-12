--Tags JOIN, CTE
--https://leetcode.com/problems/movie-rating/
--beats 63%
--Write your MySQL query statement below

WITH base AS
(
SELECT
    m.title,
    u.name,
    mr.rating,
    mr.created_at  
FROM MovieRating mr
LEFT JOIN Movies m ON m.movie_id = mr.movie_id
LEFT JOIN Users u ON u.user_id = mr.user_id
),
names AS
(
SELECT 
    name AS results
FROM base 
GROUP BY name
ORDER BY COUNT(DISTINCT title) DESC, name
LIMIT 1
),
movie AS
(
SELECT 
    title AS results
FROM base
WHERE LEFT(created_at,7) = '2020-02'
GROUP BY title
ORDER BY AVG(rating) DESC,title
LIMIT 1
)
SELECT results FROM names
UNION ALL
SELECT results FROM movie