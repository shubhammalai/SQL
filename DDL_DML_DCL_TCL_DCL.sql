
--DDL

CREATE DATABASE students ; 
USE students;

DROP TABLE students;
DROP TABLE course;
DROP TABLE ENROLLMENTS;

create table students(
student_id int auto_increment,
fname varchar(20) NOT NULL,
lname varchar(20) NOT NULL,
email varchar(40) UNIQUE,
city varchar (20) default 'PUNE',
PRIMARY KEY (student_id)
);

CREATE TABLE course (
course_id int auto_increment,
course_name varchar(20) NOT NULL,
PRIMARY KEY (course_id)
);

CREATE TABLE ENROLLMENTS (
enrollments_id int auto_increment,
student_id int,
course_id int,
PRIMARY KEY(enrollments_id),
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES course(course_id)
);

ALTER TABLE students
MODIFY fname varchar(100);

ALTER TABLE students
ADD COLUMN COUNTRY VARCHAR(30);

ALTER TABLE students 
RENAME COLUMN fname TO full_name;

ALTER TABLE STUDENTS
DROP COLUMN COUNTRY;

ALTER TABLE STUDENTS
ADD constraint CONS_CHECK_EMAIL CHECK(email like '%@%.%');

ALTER TABLE STUDENTS
drop constraint CONS_CHECK_EMAIL;

TRUNCATE STUDENTS;
TRUNCATE course;
TRUNCATE enrollments;



===============================================================================

--DML

INSERT INTO students(fname,lname,email) values('shubham','malai','shubham@gmail.com');
INSERT INTO students(full_name,lname,email) values('rohit','patil','rohit@mailcom');

INSERT INTO course(course_name) values('Big Data');

INSERT INTO ENROLLMENTS(student_id, course_id) values(1,1);
INSERT INTO ENROLLMENTS(student_id, course_id) values(1,1);

UPDATE STUDENTS 
SET
email = 'shubh@yahoo.com'
WHERE student_id = 1;

DELETE FROM STUDENTS 
WHERE student_id =3;

DELETE FROM STUDENTS ;

===============================================================================


--DQL

select * from students;
select * from course;
select * from ENROLLMENTS;


===============================================================================

--TCL

COMMIT;

ROLLBACK;

===============================================================================

--DCL 

GRANT;

REVOKE;

===============================================================================