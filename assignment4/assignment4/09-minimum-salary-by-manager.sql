-- Question 9
-- Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.

SELECT manager_id,
       MIN(salary) AS lowest_salary
FROM employees
GROUP BY manager_id
ORDER BY manager_id;
