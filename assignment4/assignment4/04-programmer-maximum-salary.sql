-- Question 4
-- Write a query to get the maximum salary of an employee working as a Programmer.
-- Run this read-only query after selecting the database containing employees.

SELECT MAX(salary) AS maximum_programmer_salary
FROM employees
WHERE job_id = 'IT_PROG';
