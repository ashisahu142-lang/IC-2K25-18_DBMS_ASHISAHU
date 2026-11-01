-- Question 5
-- Write a query to get the average salary and number of employees working the department 90.
-- Run this read-only query after selecting the database containing employees.

SELECT AVG(salary) AS average_salary,
       COUNT(*) AS employee_count
FROM employees
WHERE department_id = 90;
