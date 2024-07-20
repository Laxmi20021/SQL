CREATE DATABASE chair;

USE chair;

CREATE TABLE chair(id int, c_name varchar(20), c_cno bigint);

ALTER TABLE chair ADD COLUMN p_brand varchar(20);

SELECT * FROM chair;

ALTER TABLE chair RENAME COLUMN c_name To chair_name;

DESC chair;


