-- Question 2
-- Write a query to get the total salaries payable to employees.
-- Run this read-only query after selecting the database containing employees.

SELECT SUM(salary) AS total_salary
FROM employees;
