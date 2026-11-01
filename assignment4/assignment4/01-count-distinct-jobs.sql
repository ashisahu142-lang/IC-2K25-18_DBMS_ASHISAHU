-- Question 1
-- Write a query to list the number of jobs available in the employees table.
-- Run this read-only query after selecting the database containing employees.

SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;
