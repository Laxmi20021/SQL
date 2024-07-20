CREATE DATABASE jul_15;
USE jul_15;
CREATE TABLE hotel_info(id int,hotel_name varchar(20),owner_name varchar(200),specilization_foods varchar(150),count int,staffid bigint,staff_salary bigint,staff_name varchar(50),customer varchar(90),adress_hotel varchar(30));
USE jul_15;
CREATE TABLE touristplace_info(id int,manager_name varchar(20),owner_name varchar(200),destination_tourist varchar(150),count int,passengerid bigint,tourist_price bigint,staff_name varchar(50),passenger_email varchar(90),adress_tourist varchar(30));
USE jul_15;
INSERT INTO hotel_info VALUES(12,'sogadu','shrikar','westwen food',5,7845,7000,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(234,'sagar','kavitha','south indian meals',7,7475,8000,'karunya','kiran','rajajinagar');
INSERT INTO hotel_info VALUES(1672,'blue ocean','omkar','andhra food',7,5895,90000,'vrushanka','deepa','kuvempu');
INSERT INTO hotel_info VALUES(27890,'byto kafe','shrikant','westwen food',9,36778,9000,'karuna','heena','btm');
INSERT INTO hotel_info VALUES(14452,'since1908','shrikar','westwen food',5,7845,7000,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(1288,'sanchii','naveen','indian food',9,56775,34600,'padmavathi','sanjivini','peenya');
INSERT INTO hotel_info VALUES(456,'kamath','niveditha','westwen food',10,4565,34600,'nanditha','sneha','mahalaxmi');
INSERT INTO hotel_info VALUES(4567,'since 1902','kiran','south food',5,2345,24500,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(4567,'sogadu','shrikar','westwen food',5,7845,7000,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(75432,'sogadu','jadash','indian food',9,3455,38800,'samanvi','kaverii','btm');
INSERT INTO hotel_info VALUES(2345,'the pride','nandini','snakes food',8,7845,7000,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(1346,'kamath','shrikar','westwen food',9,7845,7000,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(16647,'blue eyrs','shrikar','westwen food',3,7845,7000,'veeresh','aarathi','btm');
INSERT INTO hotel_info VALUES(2456,'fab hotel','ashwini','andhra food',1,7845,9000,'kaviraj','bharathii','btm');
INSERT INTO hotel_info VALUES(4356,'amritha','kavirathna','westwen food',6,73667,255600,'jeevitha','priyanka','bidadi');
SELECT * FROM hotel_info;

INSERT INTO touristplace_info VALUES(123,'suhas','sagar','banglore',1237,456,56000,'prajawala','arun@gmail.com','btm');
INSERT INTO touristplace_info VALUES(456,'prashant','asha','kerala',7867,456,56000,'tejashwani','shree@gmail.com','vidhya nagar');
INSERT INTO touristplace_info VALUES(8765,'manoj','manvita','andhrapradesh',3467,456,56000,'prabha','basavaraj@gmail.com','nagasandra');
INSERT INTO touristplace_info VALUES(1234,'jeevitha','vrushank','maharastra',2347,456,56000,'nayana','paramesh@gmail.com','electronics city');
INSERT INTO touristplace_info VALUES(1263,'vedha','chukki','talinada',5667,456,56000,'sapna','keerti@gmail.com','kuvempu nagar');
INSERT INTO touristplace_info VALUES(109823,'kavya','pratima','tamil nadu',6787,456,56000,'vikram','vandana@gmail.com','national market');
INSERT INTO touristplace_info VALUES(123453,'harshita','uma','banglore',4567,456,56000,'basavaraj','rajani@gmail.com','btm');
INSERT INTO touristplace_info VALUES(134523,'namita','sudha','goa',9877,456,56000,'aneel','kapi@gmail.com','btm');
INSERT INTO touristplace_info VALUES(109823,'chaitra','amritha','dhandali',097,456,56000,'rajshekar','kapi@gmail.com','btm');
INSERT INTO touristplace_info VALUES(1098723,'amit','sagar','kerala',45677,456,56000,'rajshekar','kapi@gmail.com','basham circle');
INSERT INTO touristplace_info VALUES(456,'prashant','asha','kerala',7867,456,56000,'tejashwani','shree@gmail.com','vidhya nagar');
INSERT INTO touristplace_info VALUES(109823,'kavya','pratima','tamil nadu',6787,456,56000,'vikram','vandana@gmail.com','national market');
INSERT INTO touristplace_info VALUES(123453,'harshita','uma','banglore',4567,456,56000,'basavaraj','rajani@gmail.com','btm');
INSERT INTO touristplace_info VALUES(123,'suhas','sagar','banglore',1237,456,56000,'prajawala','arun@gmail.com','btm');

SELECT * FROM touristplace_info;

ALTER TABLE touristplace_info ADD COLUMN tourist_entry_fee int default 500;
ALTER TABLE touristplace_info drop column tourist_entry_fee;
ALTER TABLE touristpalce_info MODIFY COLUMN t_accomodation varchar(20);
ALTER TABLE touristplace_info MODIFY COLUMN t_destination int;
DESC touristplace_info;

RENAME TABLE touristplace_info to tourist_info;

SELECT *FROM tourist_info;

SELECT *FROM tourist_info where id=6;


