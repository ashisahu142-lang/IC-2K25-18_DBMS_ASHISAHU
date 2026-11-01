-- Question 13
-- Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
-- Run this read-only query after selecting the database containing employees.

SELECT job_id,
       MAX(salary) AS maximum_salary
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000
ORDER BY job_id;
