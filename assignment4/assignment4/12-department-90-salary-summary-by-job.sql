-- Question 12
-- Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
-- Run this read-only query after selecting the database containing employees.

SELECT job_id,
       SUM(salary) AS total_salary,
       MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id
ORDER BY job_id;
