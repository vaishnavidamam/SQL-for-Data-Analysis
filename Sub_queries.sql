------ SUBQUERIES ------

SELECT *
FROM employee_demographics;
SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
WHERE employee_id IN
				(SELECT employee_id
					FROM employee_salary
					WHERE dept_id = 1);
                    
SELECT first_name,salary,
 (SELECT AVG(Salary)
  FROM employee_salary)
FROM employee_salary
GROUP BY first_name,salary;

SELECT gender,AVG(age),MAX(age),MIN(age),SUM(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM
 (SELECT gender,AVG(age),MAX(age),MIN(age),SUM(age),COUNT(age)
   FROM employee_demographics
   GROUP BY gender) AS agg_table;
   
SELECT gender, AVG(`MAX(age)`)
FROM
 (SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age), SUM(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table
GROUP BY gender
;


SELECT AVG(max_age)
FROM
 (SELECT gender,
 AVG(age) AS avg_age,
 MAX(age) AS max_age,
 MIN(age) AS min_age,
 COUNT(age) AS cou_age,
 SUM(age) AS sum_age
FROM employee_demographics
GROUP BY gender) AS agg_table;

CREATE VIEW customer_salary1 AS
SELECT employee_id,
SUM(salary) AS total_salary
FROM employee_salary
GROUP BY employee_id;
