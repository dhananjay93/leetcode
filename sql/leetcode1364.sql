--Tags CTE, JOINS
--https://leetcode.com/problems/number-of-trusted-contacts-of-a-customer/description/
--beats 77%
--Write your MySQL query statement below

WITH CTE AS
(
SELECT 
    cuu.customer_id user_id,
    cuu.customer_name,
    sum(case when co.user_id IS NULL then 0 else 1 end) contacts_cnt,
    sum(case when cu.email IS NULL then 0 else 1 end) trusted_contacts_cnt
FROM Contacts co
LEFT JOIN Customers cu ON cu.email = co.contact_email      
RIGHT JOIN Customers cuu ON cuu.customer_id  = co.user_id  
GROUP BY  co.user_id, cuu.customer_name
)
SELECT 
    i.invoice_id ,
    c.customer_name ,
    i.price ,
    c.contacts_cnt,
    c.trusted_contacts_cnt
FROM CTE c
JOIN Invoices i
ON i.user_id = c.user_id
ORDER BY i.invoice_id