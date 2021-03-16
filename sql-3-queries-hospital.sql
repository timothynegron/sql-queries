--Select all patient records.

SELECT * 
FROM patients;


--Select from Health Care personnel.

SELECT * 
FROM hcp
WHERE salary > 60000 AND salary < 100000;

--See how many appointments each employee has

SELECT empl_id, COUNT(*)
FROM appointments
GROUP BY empl_id;

--See the total amount of cost for each patient that has been billed

SELECT SUM(COST)
FROM bill;

--See join of hcp and appointments assigned to them. 

SELECT 
hcp.empl_id,
hcp.fname,
hcp.lname,
hcp.role,
appointment.appt_date,
appointments.empl

FROM 
hcp,
appointments

WHERE hcp.empl_id = appointments.empl