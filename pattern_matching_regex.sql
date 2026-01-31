-- pattern matching

SELECT *
FROM employee;

SELECT * 
FROM EMPLOYEE 
WHERE first_name like '%n%';


-- first_name exactly 3 chars
SELECT * 
FROM EMPLOYEE 
WHERE first_name like '___';


-- fname 3 or more chars

SELECT * 
FROM EMPLOYEE 
WHERE first_name like '___%';

SELECT *  
FROM employee
WHERE email NOT LIKE '_%@_%.__%';


-- search for all employees who have % in their email id  
SELECT *  
FROM employee  
WHERE email LIKE '%\%%';





-- firstname starting with A, B, C or D  
SELECT *  
FROM employee
WHERE first_name REGEXP '^[ABCD]'; 

-- firstname ending with A, B, C or D  
SELECT *  
FROM employee 
WHERE first_name REGEXP '[ABCD]$'; 


-- in the firstname the 2nd character (a,e,i,0,u)  
SELECT *  
FROM  employee
WHERE first_name REGEXP '^.[aeiou]';



