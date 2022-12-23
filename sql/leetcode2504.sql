--Tags CONCAT, SUBSTRING
--https://leetcode.com/problems/concatenate-the-name-and-the-profession/description/
--beats 87%
--Write your MySQL query statement below

SELECT 
    person_id,
    CONCAT(name, "(",SUBSTRING(profession,1,1),")") name
FROM Person
ORDER BY person_id DESC