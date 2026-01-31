SELECT *
FROM EMPLOYEE;

SELECT COUNT(*) FROM EMPLOYEE;

select count(1) 
from employee
where department_id = 1;


select count(*) from employee where salary > 50000; 

-- get count of employees who report to a manager  

select count(manager_id) from employee;

-- get count of employees who are not managers and their salary is more than 50000  

select count(*) 
from employee
WHERE job_title != 'Manager'
AND 
SALARY >50000;

-- ORDER BY - > IT IS NOT NECESSARY TO HAVE ORDER BY COLUMN IN PROJECTION CLAUSE

SELECT *
FROM EMPLOYEE
WHERE SALARY > 30000 
ORDER BY SALARY DESC
LIMIT 5;

select *, salary+salary*0.2 as revised_salary
from employee 
where salary >=40000
order by revised_salary;


