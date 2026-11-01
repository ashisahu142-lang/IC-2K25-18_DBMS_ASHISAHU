-- Question 5
-- Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT first_name
FROM employees
WHERE LOWER(first_name) LIKE '%b%'
  AND LOWER(first_name) LIKE '%c%';
