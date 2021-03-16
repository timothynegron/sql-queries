-----------------------------------------------------------
--Table Name:	patients
--Notes:		Primary key will be the patients social 
--				security number.
-----------------------------------------------------------

CREATE TABLE patients
(
patient_id NUMBER(4,0) PRIMARY KEY,
address NUMBER(4,0),
lname VARCHAR2(30),
fname VARCHAR2(30),
age NUMBER(3,0) CHECK(age > 0),
phone_num NUMBER(10,0),

CONSTRAINT fk_patient_address FOREIGN KEY(address) REFERENCES address(address_id)
)

-----------------------------------------------------------
--Table Name:	hcp (Health Care Personnel)
--Notes:		Primary key will be the HCP social security number.
-----------------------------------------------------------

CREATE TABLE hcp
(
empl_id NUMBER(4,0) PRIMARY KEY,
address NUMBER(4,0),
lname VARCHAR2(30) NOT NULL,
fname VARCHAR2(30) NOT NULL,
age NUMBER(3,0) CHECK(age > 0) NOT NULL,
phone_num NUMBER(10,0) NOT NULL,
salary INTEGER CHECK(salary > 0) NOT NULL,
role VARCHAR2(50) NOT NULL,

CONSTRAINT fk_hcp_address FOREIGN KEY(address) REFERENCES address(address_id)
)

-----------------------------------------------------------
--Table Name:	appointment
--Notes:	 	Primary key will be the appointment id 
--				which is automatically incremented.
-----------------------------------------------------------

CREATE TABLE appointments
(
appt_id NUMBER(4,0) PRIMARY KEY,
patient NUMBER(4,0),
empl NUMBER(4,0),
appt_date VARCHAR2(15) NOT NULL,
description VARCHAR2(100),

CONSTRAINT fk_app_patient FOREIGN KEY(patient) REFERENCES patients(patient_id),
CONSTRAINT fk_app_empl FOREIGN KEY(empl) REFERENCES hcp(empl_id)
)

-----------------------------------------------------------
--Table Name:	address
--Notes:	 	Primary key will be the address id.
-----------------------------------------------------------

CREATE TABLE address
(
address_id NUMBER(4,0) PRIMARY KEY,
street VARCHAR2(100),
city VARCHAR2(25),
state VARCHAR2(2),
zip_code NUMBER(5,0)
)

-----------------------------------------------------------
--Table Name:	bill
--Notes:	 	Primary key will be the bill id.
-----------------------------------------------------------

CREATE TABLE bill
(
bill_id NUMBER(4,0)  PRIMARY KEY,
patient NUMBER(4,0),
appt NUMBER(4,0),
cost NUMBER(6,0) CHECK(cost > 0),

CONSTRAINT fk_bill_patient FOREIGN KEY(patient) REFERENCES patients(patient_id),
CONSTRAINT fk_bill_appt FOREIGN KEY(appt) REFERENCES appointments(appt_id)
)

-----------------------------------------------------------
--Table Name:	patient_insurance
--Notes:	 	Primary key will be the insurance id.
-----------------------------------------------------------

CREATE TABLE patient_insurance
(
ins_id NUMBER(4,0) PRIMARY KEY,
patient NUMBER(4,0),
ins_comp_name VARCHAR2(50),
policy_num NUMBER(4,0),

CONSTRAINT fk_ins_patient FOREIGN KEY(patient) REFERENCES patients(patient_id)
)

-----------------------------------------------------------
--Table Name:	payment
--Notes:	 	Primary key will be the payment number.
-----------------------------------------------------------

CREATE TABLE payment
(
payment_num NUMBER(4,0) PRIMARY KEY,
insurance NUMBER(4,0),
bill NUMBER(4,0),

CONSTRAINT fk_payment_insurance FOREIGN KEY(insurance) REFERENCES patient_insurance(ins_id),
CONSTRAINT fk_payment_bill FOREIGN KEY(bill) REFERENCES bill(bill_id)
)
