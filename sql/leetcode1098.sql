--Tags JOIN, DATE FUNCTIONS, CTE
--https://leetcode.com/problems/unpopular-books/
--beats 37%
--Write your MySQL query statement below

WITH book_sales AS
(
    SELECT 
        book_id,
        SUM(quantity) as quant
    FROM Orders 
    WHERE dispatch_date >= DATE_SUB("2019-06-23", INTERVAL 1 YEAR)
    GROUP BY book_id 
)
SELECT 
    b.book_id,
    b.name
FROM Books b
LEFT JOIN book_sales
ON book_sales.book_id = b.book_id
WHERE b.available_from <= DATE_SUB("2019-06-23", INTERVAL 1 MONTH) AND
    COALESCE(quant, 0) < 10