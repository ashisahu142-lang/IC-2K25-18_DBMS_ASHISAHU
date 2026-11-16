-- Question 19: Write a query to get monthly salary (round 2 decimal places) of each and every employee.
SELECT employee_id, first_name, last_name, ROUND(salary / 12, 2) AS monthly_salary FROM employees;
