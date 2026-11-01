-- Question 11
-- Write a query to get the average salary for each job ID excluding programmer.
-- Run this read-only query after selecting the database containing employees.

SELECT job_id,
       AVG(salary) AS average_salary
FROM employees
WHERE job_id <> 'IT_PROG'
GROUP BY job_id
ORDER BY job_id;
