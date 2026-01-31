SELECT * FROM EMPLOYEE;

SELECT 
DISTINCT JOB_TITLE
FROM EMPLOYEE;

SELECT 
COUNT(DISTINCT JOB_TITLE) AS UNIQUE_JT
FROM EMPLOYEE;

SELECT 
DISTINCT DEPARTMENT_ID,JOB_TITLE
FROM EMPLOYEE;


create table students( 
student_id INT AUTO_INCREMENT, 
student_fname varchar(30) NOT NULL, 
student_lname varchar(30) NOT NULL, 
student_mname varchar(30), 
student_email varchar(30) NOT NULL, 
student_phone varchar(15) NOT NULL, 
student_alternate_phone varchar(15), 
years_of_exp INT NOT NULL, 
student_company varchar(30), 
batch_date varchar(30) NOT NULL, 
source_of_joining varchar(30) NOT NULL, 
location varchar(30) NOT NULL, 
PRIMARY KEY(student_id), 
UNIQUE KEY(student_email) 
); 


INSERT INTO students(student_fname, student_lname, student_email, student_phone, 
years_of_exp, student_company, batch_date, source_of_joining, location) 
VALUES ('Amit', 'Sharma', 'amit.sharma@gmail.com', '9191919191', 6, 'Walmart', '05-02-2021', 
'LinkedIn', 'Bangalore'); 
INSERT INTO students(student_fname, student_lname, student_email, student_phone, 
years_of_exp, student_company, batch_date, source_of_joining, location) 
VALUES ('Priya', 'Rao', 'priya.rao@gmail.com', '9292929292', 3, 'Flipkart', '05-02-2021', 'LinkedIn', 
'Hyderabad'); 
INSERT INTO students(student_fname, student_lname, student_email, student_phone, 
years_of_exp, student_company, batch_date, source_of_joining, location) 
VALUES ('Rahul', 'Verma', 'rahul.verma@gmail.com', '9393939393', 12, 'Google', '19-02-2021', 
'Google', 'Bangalore'); 
INSERT INTO students(student_fname, student_lname, student_email, student_phone, 
years_of_exp, student_company, batch_date, source_of_joining, location) 
VALUES ('Anjali', 'Singh', 'anjali.singh@gmail.com', '9494949494', 8, 'Walmart', '19-02-2021', 'Quora', 
'Chennai'); 
INSERT INTO students(student_fname, student_lname, student_email, student_phone, 
years_of_exp, student_company, batch_date, source_of_joining, location) 
VALUES ('Vikram', 'Patel', 'vikram.patel@gmail.com', '9294919191', 15, 'Microsoft', '05-02-2021', 
'Friend', 'Pune'), 
('Asha', 'Menon', 'asha.menon@gmail.com', '9394919191', 18, 'TCS', '05-02-2021', 'YouTube', 
'Pune'), 
('Kiran', 'Nair', 'kiran.nair@gmail.com', '9293519191', 20, 'Wipro', '19-02-2021', 'YouTube', 'Pune'), 
('Ravi', 'Iyer', 'ravi.iyer@gmail.com', '9291975191', 14, 'Wipro', '19-02-2021', 'Google', 'Chennai');

SELECT * FROM STUDENTS;

-- 5 candidates with highest experience 

select * from students order by years_of_exp desc limit 5;

-- candidates with 3RD AND 4TH HIGHEST EXP

select * from students order by years_of_exp desc limit 3,2;

-- from which sources the 5 most experienced candidates got to know about me.

select student_fname, source_of_joining
from students
order by years_of_exp desc 
limit 5;

-- distinct and order by do not work together in below condition

select distinct source_of_joining
from students
order by years_of_exp desc 
limit 5;

 