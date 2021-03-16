INSERT INTO address
(address_id, street, city, state, zip_code)
VALUES
(1111, '134 Washington Avenue', 'Sleepy Hollow', 'NY', 11438),
(2222, '1000 Homes Street', 'Tarrytown', 'NY', 11234),
(3333, '7877 Felton Street', 'Albany', 'NY', 11534),
(4444, '2300 Damian Avenue', 'Flushing', 'NY', 11920),
(5555, '1 Greenwhich Avenue', 'Nassau', 'NY', 11777),
(6666, '34 Lirey Road', 'Rend', 'NY', 14533),
(7777, '1249 Applegate Avenue', 'Mariot', 'NY', 11734),
(8888, '35 Long Road', 'New York', 'NY', 11003),
(9999, '74 5th Avenue', 'New York', 'NY', 10013),
(1000, '303 Dermott Road', 'Levittown', 'NY', 11034)

---------------------------------------------------------------------


INSERT INTO patients
(patient_id, address, lname, fname, dob, age, phone_num)
VALUES
(1111, 1111, 'Tran', 'Thanh', 36, 5163341235),
(1112, 2222, 'Negron', 'Timothy', 38, 6466779000),
(1113, 3333, 'Dalen', 'Mark', 39, 9173242345),
(1114, 4444, 'Richard', 'Ariel', 49, 9144445564),
(1115, 5555, 'Lee',	'Song', 46, 9145437778)


---------------------------------------------------------------------

INSERT INTO payment
(payment_num, ins, bill)
VALUES
(123, 100, 110),
(124, 101, 111),
(125, 102, 112),
(126, 103, 113),
(127, 104, 114)


---------------------------------------------------------------------


INSERT INTO patient insurance
(ins_id, patient, ins_comp_name,policy_num)
VALUES
(100, 1111,	'Fidelis', 43952),
(101, 1112,	'Medicaid', 49200),
(102, 1113,	'Medicare A', 42323),
(103, 1114,	'Blue Cross Blue Shield', 23412),
(104, 1115, 'Health First', 81020)



INSERT INTO bill
(bill_id, patient, appt, cost)
VALUES
(110, 1111,	2000, 1,000),
(111, 1112,	2001, 1,000),
(112, 1113,	2002, 300),
(113, 1114,	2003, 300), 
(114, 1115,	2004, 700),


---------------------------------------------------------------------


INSERT INTO appointment
(appt_id, patient, appt_date, description)
VALUES
(2000, 1111, '5/15/2018', 'Xray'),
(2001, 1112, '5/30/2018', 'Xray'),
(2002, 1113, '5/22/2018', 'Screening'),
(2003, 1114, '5/22/2018', 'Screening'),
(2004, 1115, '5/15/2018', 'Screening, vaccinations')


---------------------------------------------------------------------


INSERT INTO HCP
(empl_id, address, lname, fname, age, phone_num, role)
VALUES
(1111, 6666, 'Sanchez', 'Miguel'. 42, 6467391864, 120000, 'Physician'),
(1112, 7777, 'Alexander', 'Ilene', 33, 5162848665, 90000, ‘Nurse Practitioner'),
(1113, 8888, 'Pagan', 'Megan', 85, 9148792432, 110000, 'Physician'),
(1114, 9999, 'Gordon', 'Tisch', 41, 3476110000,	100000, 'Physician Assistant'),
(1115, 1000, 'Romaine', 'Dorothy', 72, 9178859174, 120000, 'Physician')