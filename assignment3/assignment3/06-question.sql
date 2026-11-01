-- Question 6
-- Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT last_name, job, salary
FROM employees
WHERE job IN ('Programmer', 'Shipping Clerk')
  AND salary NOT IN (4500, 10000, 15000);
