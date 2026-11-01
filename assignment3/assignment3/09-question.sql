-- Question 9
-- Write a query to display the jobs/designations available in the employees table.
SELECT DISTINCT job
FROM employees
WHERE job IS NOT NULL
ORDER BY job ASC;
