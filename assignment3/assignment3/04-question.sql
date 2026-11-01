-- Question 4
-- Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1987-01-01'
  AND hire_date <  '1988-01-01';
