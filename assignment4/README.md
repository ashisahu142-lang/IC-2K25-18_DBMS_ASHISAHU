# MySQL DBMS Assignment 4

## Assignment title and objective

**Aggregate Functions and Group by [14 exercises]**

This assignment practices calculating summaries from an existing `employees` table with MySQL aggregate functions, filtering rows before aggregation, grouping rows, and filtering grouped results.

## Topics covered

- `COUNT`, `COUNT(DISTINCT ...)`, `SUM`, `MIN`, `MAX`, and `AVG`
- Salary totals, ranges, and averages
- Grouping employees by job, manager, and department
- Filtering source rows with `WHERE`
- Filtering grouped results with `HAVING`

## Prerequisites

- MySQL 8.0 or later (the queries use basic aggregate and `GROUP BY` syntax supported by MySQL 8.0).
- Access to a database that already contains an `employees` table with at least `job_id`, `salary`, `manager_id`, and `department_id` columns. The source assignment does not provide table DDL, data, or a database name.
- `salary` should be a numeric column. Identifier types should match the source schema.

## Running the scripts

Each numbered script is an independent, read-only `SELECT` query. From a MySQL client started in this project directory, select your existing database and run the desired script:

```text
USE your_database_name;
SOURCE sql/01-count-distinct-jobs.sql;
```

Replace the `SOURCE` path with the script you want to run. Do not type a real password into a script or commit credentials. No schema or sample-data setup is included because the assignment assumes an existing `employees` table and does not define its structure. See [database notes](docs/database-notes.md) before adapting the queries to another schema.

## Question-wise solution index and coverage checklist

The original order and wording are retained below. Every question has a matching script and an explanation in [solutions explained](docs/solutions-explained.md).

| # | Original question | SQL script |
|---:|---|---|
| 1 | Write a query to list the number of jobs available in the employees table. | [`01-count-distinct-jobs.sql`](sql/01-count-distinct-jobs.sql) |
| 2 | Write a query to get the total salaries payable to employees. | [`02-total-salaries.sql`](sql/02-total-salaries.sql) |
| 3 | Write a query to get the minimum salary from employees table. | [`03-minimum-salary.sql`](sql/03-minimum-salary.sql) |
| 4 | Write a query to get the maximum salary of an employee working as a Programmer. | [`04-programmer-maximum-salary.sql`](sql/04-programmer-maximum-salary.sql) |
| 5 | Write a query to get the average salary and number of employees working the department 90. | [`05-department-90-average-and-count.sql`](sql/05-department-90-average-and-count.sql) |
| 6 | Write a query to get the highest, lowest, sum, and average salary of all employees. | [`06-salary-summary.sql`](sql/06-salary-summary.sql) |
| 7 | Write a query to get the number of employees with the same job. | [`07-employee-count-by-job.sql`](sql/07-employee-count-by-job.sql) |
| 8 | Write a query to get the difference between the highest and lowest salaries. | [`08-salary-range-difference.sql`](sql/08-salary-range-difference.sql) |
| 9 | Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. | [`09-minimum-salary-by-manager.sql`](sql/09-minimum-salary-by-manager.sql) |
| 10 | Write a query to get the department ID and the total salary payable in each department. | [`10-total-salary-by-department.sql`](sql/10-total-salary-by-department.sql) |
| 11 | Write a query to get the average salary for each job ID excluding programmer. | [`11-average-salary-by-job-excluding-programmer.sql`](sql/11-average-salary-by-job-excluding-programmer.sql) |
| 12 | Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only. | [`12-department-90-salary-summary-by-job.sql`](sql/12-department-90-salary-summary-by-job.sql) |
| 13 | Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000. | [`13-jobs-with-maximum-salary-at-least-4000.sql`](sql/13-jobs-with-maximum-salary-at-least-4000.sql) |
| 14 | Write a query to get the average salary for all departments employing more than 10 employees. | [`14-department-averages-over-10-employees.sql`](sql/14-department-averages-over-10-employees.sql) |

## Assumptions and validation limitations

- The document names the `employees` table but does not define its columns, data types, database, or sample rows. Required columns are inferred from the questions and listed in `docs/database-notes.md`.
- For Questions 4 and 11, `IT_PROG` is assumed to be the `job_id` value representing Programmer, as in the common HR sample schema. If your class table stores a different value (for example, `Programmer`), change that predicate to the actual value.
- Questions 7, 9, 10, 12, and 14 group rows with `GROUP BY`; a NULL group key, if present, forms its own group. The queries do not silently discard such rows.
- Validation: question coverage, identifiers, and MySQL 8.0 syntax were reviewed statically. Runtime execution was not performed because MySQL, `mysqld`, and Docker are unavailable in the environment.

## References

- [MySQL 8.0 aggregate functions](https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html)
- [MySQL 8.0 handling of GROUP BY](https://dev.mysql.com/doc/refman/8.0/en/group-by-handling.html)
