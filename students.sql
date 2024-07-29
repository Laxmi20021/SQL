CREATE TABLE students (student_id INT PRIMARY KEY,first_name VARCHAR(50),
    last_name VARCHAR(50),age INT,
    email VARCHAR(100) UNIQUE);

alter table students add constraint age_chk check(age>15);

alter table students drop constraint age_chk  ;

INSERT INTO students (student_id, first_name, last_name, age, email) VALUES
(1, 'Laxmi', 'patil', 20, 'laxmi@gmail.com'),
(2, 'Aarathi', 'budihal', 22, 'aarathi@gmail.com'),
(3, 'rohit', 'patil', 19, 'rohitpatil@gmail.com'),
(4, 'megha', 'navalagunda', 21, 'megha@gmail.com'),
(5, 'sushmitha', 'doddamani', 23, 'sushnitha@gmail.com');

select * from students;

alter table students add constraint age_chk check(age>15);

alter table students drop constraint age_chk ;
