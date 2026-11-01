-- Question 9
-- Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
-- Run this read-only query after selecting the database containing employees.

SELECT manager_id,
       MIN(salary) AS lowest_salary
FROM employees
GROUP BY manager_id
ORDER BY manager_id;
