-- Question 8
-- Write a query to get the difference between the highest and lowest salaries.
-- Run this read-only query after selecting the database containing employees.

SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;
