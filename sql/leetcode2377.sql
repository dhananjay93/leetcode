--Tags ORDER BY
--https://leetcode.com/problems/sort-the-olympic-table/
--beats 7%

SELECT
    * 
FROM Olympic 
ORDER BY gold_medals DESC,silver_medals DESC,bronze_medals DESC,country ASC