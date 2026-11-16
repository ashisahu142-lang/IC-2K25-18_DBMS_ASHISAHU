-- Question 5
-- Write a query to get the average salary and number of employees working the department 90.

SELECT AVG(salary) AS average_salary,
       COUNT(*) AS employee_count
FROM employees
WHERE department_id = 90;
