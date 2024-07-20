CREATE DATABASE jul_20;
USE jul_20;
CREATE TABLE employee_details(id int,name varchar(20),job_description varchar(200),specilization varchar(150),count int,productid bigint);
USE jul_20;
CREATE TABLE aiport_details(id int,name_airport varchar(20),airport_description varchar(200),destination varchar(150),count int,passengaeid bigint);
USE jul_20;
ALTER TABLE employee_details ADD COLUMN address varchar(30);
ALTER TABLE employee_details ADD COLUMN email varchar(40);
ALTER TABLE employee_details ADD COLUMN licence varchar(50);
ALTER TABLE employee_details ADD COLUMN hobbies varchar(20);
ALTER TABLE employee_details ADD COLUMN payroll_data varchar(40);

USE jul_20;
ALTER TABLE airport_details ADD COLUMN take_off varchar(20);
ALTER TABLE airport_details ADD COLUMN email_p varchar(40);
ALTER TABLE airport_details ADD COLUMN passport varchar(50);
ALTER TABLE airport_details ADD COLUMN aadhar_card varchar(20);
ALTER TABLE airport_details ADD COLUMN street_map varchar(40);

SELECT * FROM employee_details;
SELECT * FROM airport_details;


ALTER TABLE employee DROP COLUMN count;
ALTER TABLE airport_details DROP COLUMN take_off;


ALTER TABLE worker_details DROP COLUMN hobbies;
ALTER TABLE worker_details DROP COLUMN payroll_data;

ALTER TABLE worker_details RENAME COLUMN name TO e_name;
ALTER TABLE worker_details RENAME COLUMN id TO e_id;
ALTER TABLE worker_details RENAME COLUMN email TO e_email;
ALTER TABLE worker_details RENAME COLUMN address TO e_address;
ALTER TABLE worker_details RENAME COLUMN count TO e_count;



ALTER TABLE aiport_details RENAME COLUMN passport TO p_passport;
ALTER TABLE aiport_details RENAME COLUMN id TO air_id;
ALTER TABLE aiport_details RENAME COLUMN aadhar_card TO aadhar_ppcards;
ALTER TABLE aiport_details RENAME COLUMN destination TO air_destination;
ALTER TABLE aiport_details RENAME COLUMN email_p TO email_passenger;

SELECT * FROM employee_details;
SELECT * FROM airport_details;

USE jul_20;

ALTER TABLE employee_details MODIFY COLUMN address varchar(20);
ALTER TABLE employee_details MODIFY COLUMN email varchar(30);
ALTER TABLE employee_details MODIFY COLUMN licence varchar(50);
ALTER TABLE employee_details MODIFY COLUMN hobbies varchar(20);
ALTER TABLE employee_details MODIFY COLUMN payroll_data varchar(40);


ALTER TABLE airport_details MODIFY COLUMN address varchar(20);


USE JUL_20;
INSERT INTO employee_details VALUES(1,'poorna','swiping','mech',1,10000,'nsd','poorna@gmail.com',1000,'reading','yes');
INSERT INTO employee_details VALUES(2,'laxmi','developer','ise',4,40000,'ele','laxmi@gmail.com',8000,'playing','no');
INSERT INTO employee_details VALUES(3,'poornam','hr','cs',1,20000,'msd','poornam@gmail.com',2000,'singing','yes');
INSERT INTO employee_details VALUES(4,'sushma','engineer','cs',3,30000,'rrnagar','sushma@gmail.com',3000,'reading','no');
INSERT INTO employee_details VALUES(5,'aishwarya','developer','ise',1,25000,'shivanagar','aishu@gmail.com',1000,'writing','yes');






SELECT * FROM  employee_details ;

SELECT * FROM employee_details WHERE id=2;
SELECT * FROM employee_details WHERE name='poorna';



