CREATE database class;

USE class;

CREATE TABLE class(id int,s_name varchar(20),r_rollno bigint);

ALTER TABLE class ADD COLUMN p_brand varchar(20);

SELECT * FROM class;
