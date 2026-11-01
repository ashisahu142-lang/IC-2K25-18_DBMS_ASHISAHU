# MySQL DBMS Assignment 3

**Objective:** Solve the 11 SQL query questions in the supplied Assignment 3 document for an `employees` table. The original source document is preserved in `assignment/original-assignment.docx`.

## Prerequisites

- MySQL 8.0 or another compatible MySQL server and command-line client.
- Permission to create database `mysql_db_assignment_3` when using the included setup script.
- The query files need an `employees` table with the columns used in those files.

## Folder structure

- `assignment/original-assignment.docx` — supplied assignment source.
- `sql/00-setup-sample-data.sql` — creates a disposable test database, table, and sample rows.
- `sql/01-question.sql` through `sql/11-question.sql` — individual answers; these only read data.
- `docs/database-notes.md` — schema, assumptions, and execution notes.
- `docs/solutions-explained.md` — original question wording, SQL answers, and beginner-friendly explanations.

## Setup and execution

From a MySQL client, run the setup script first:

```text
SOURCE /absolute/path/to/sql/00-setup-sample-data.sql;
```

The setup script creates/selects `mysql_db_assignment_3` and creates `employees` only if it is absent. It does not drop or replace an existing table; duplicate sample employee IDs are ignored. Use a fresh assignment test database so pre-existing rows do not change your results. Then run one or more numbered answers, for example:

```text
SOURCE /absolute/path/to/sql/01-question.sql;
SOURCE /absolute/path/to/sql/02-question.sql;
```

Run each answer separately. The setup script is for a test database; do not point it at a database whose `employees` table you need to keep because it drops and recreates that table.

## Question-to-script mapping

1. [Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.](sql/01-question.sql)
2. [Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.](sql/02-question.sql)
3. [Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.](sql/03-question.sql)
4. [Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.](sql/04-question.sql)
5. [Write a query to display the first_name of all employees who have both "b" and "c" in their first name.](sql/05-question.sql)
6. [Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.](sql/06-question.sql)
7. [Write a query to display the last name of employees whose names have exactly 6 characters.](sql/07-question.sql)
8. [Write a query to display the last name of employees having 'e' as the third character.](sql/08-question.sql)
9. [Write a query to display the jobs/designations available in the employees table.](sql/09-question.sql)
10. [Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees.](sql/10-question.sql)
11. [Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.](sql/11-question.sql)

See [database notes](docs/database-notes.md) for column definitions and interpretation details, and [explained solutions](docs/solutions-explained.md) for query explanations.

## Validation

Static review confirms 11 numbered answers, each with one terminated `SELECT` statement, matching the source numbering. Runtime testing was not performed because a MySQL client/server is unavailable in the current environment.
