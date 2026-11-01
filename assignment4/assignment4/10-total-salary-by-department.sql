-- Question 10
-- Write a query to get the department ID and the total salary payable in each department.
-- Run this read-only query after selecting the database containing employees.

SELECT department_id,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY department_id;
