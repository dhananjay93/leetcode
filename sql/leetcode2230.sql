--Tags PROCEDURE
--https://leetcode.com/problems/the-users-that-are-eligible-for-discount/
--beats 52%

CREATE PROCEDURE getUserIDs(startDate DATE, endDate DATE, minAmount INT)
BEGIN
	--Write your MySQL query statement below.
	SELECT DISTINCT user_id 
    FROM Purchases 
    WHERE  time_stamp BETWEEN timestamp(startdate) AND timestamp(enddate)
    AND amount  >= minAmount
    ORDER BY user_id;
END