--- JOINS ---
------ INNER JOIN ------
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
    
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id,age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

------ OUTER JOIN ------

SELECT *
FROM employee_demographics AS dem
LEFT  JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
---- SELF JOIN ----

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	on 	emp1.employee_id = emp2.employee_id;
    
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	on 	emp1.employee_id + 4 = emp2.employee_id;

----- JOINING MULTIPLE TABLES TOGETHER -----

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS emp_first_santa,
emp1.last_name AS emp_last_santa,
emp2.employee_id AS emp_santa,
emp2.first_name AS emp_first_santa,
emp2.last_name AS emp_last_santa
FROM employee_salary emp1
JOIN employee_salary emp2
	on emp1.employee_id + 2 = emp2.employee_id;
    
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;
    
SELECT *
FROM parks_departments;