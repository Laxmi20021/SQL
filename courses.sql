CREATE TABLE courses (course_id INT PRIMARY KEY,course_name VARCHAR(100),
    description TEXT,credits INT CHECK (credits > 0 AND credits <= 5),
    department VARCHAR(50));
    
alter table courses add column  students int; 

alter table courses add constraint students_chk check (students>5);

alter table courses drop constraint students_chk ;

INSERT INTO courses (course_id, course_name, description, credits, department) VALUES
(1, 'Introduction to Programming', 'Learn the basics of programming.', 3, 'Computer Science'),
(2, 'Data Structures', 'Understanding data structures.', 4, 'Computer Science'),
(3, 'Calculus I', 'Introduction to Calculus.', 4, 'Mathematics'),
(4, 'World History', 'Survey of world history.', 3, 'History'),
(5, 'English Literature', 'Study of English literature.', 3, 'Literature');

select * from courses;
desc courses;

alter table courses modify column students bigint ;
alter table courses add column roll_num int;
alter table courses add constraint roll_num_chk check(roll_num>1);
alter table courses drop constraint roll_num_chk;