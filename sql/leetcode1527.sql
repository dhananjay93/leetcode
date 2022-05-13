--Learning Like function 
#https://leetcode.com/problems/patients-with-a-condition/
# Write your MySQL query statement below
SELECT
    patient_id,
    patient_name,
    conditions   
FROM Patients
WHERE UPPER(conditions) LIKE 'DIAB1%' 
OR UPPER(conditions) LIKE '% DIAB1%'