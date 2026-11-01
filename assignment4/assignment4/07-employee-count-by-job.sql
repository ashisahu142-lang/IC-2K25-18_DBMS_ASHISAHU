-- Question 7
-- Write a query to get the number of employees with the same job.
-- Run this read-only query after selecting the database containing employees.

SELECT job_id,
       COUNT(*) AS employee_count
FROM employees
GROUP BY job_id
ORDER BY job_id;
