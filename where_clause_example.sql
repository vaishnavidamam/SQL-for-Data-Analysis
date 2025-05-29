---- WHERE Clause ----

SELECT *
FROM employee_salary
WHERE first_name = 'Donna';

SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE age<36;

SELECT *
FROM employee_demographics
WHERE birth_date > '1954-05-21';

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

---- Logical Operators (AND,OR,NOT) ----

SELECT *
FROM employee_demographics
WHERE (last_name = 'wyatt' OR age > 25 ) AND birth_date > '1981-02-21';

SELECT *
FROM employee_demographics
WHERE (last_name = 'wyatt' OR age > 25 ) OR birth_date > '1981-02-21';

SELECT *
FROM employee_demographics
WHERE employee_id < 7 OR age >= 50;

SELECT *
FROM employee_demographics
WHERE (employee_id < 7 OR age >= 50) AND gender != 'Female';

SELECT *
FROM employee_demographics
WHERE (employee_id < 7 OR age >= 50) AND gender = 'Female';

SELECT *
FROM employee_demographics
WHERE (employee_id < 7 AND age >= 50) OR gender = 'Female';

------ LIKE statement -------

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'to_';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__%';

SELECT *
FROM employee_demographics
WHERE gender LIKE 'M__%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1986%';


