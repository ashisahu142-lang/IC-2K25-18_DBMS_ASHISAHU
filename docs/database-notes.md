# Database Notes

## Database and execution

The answer files target MySQL 8.0 and use InnoDB where foreign-key enforcement or referential actions are required. Choose a schema before running a script. These files are individual answers, not one migration sequence: most questions intentionally reuse names such as `countries`, `jobs`, and `employees` with different definitions. Use a fresh practice schema or run one answer at a time. No script drops existing tables.

Run an answer from a shell with the MySQL client installed:

```sh
mysql -u USER -p DATABASE < sql/01-create-countries.sql
```

Replace `USER` and `DATABASE` with your local values. Scripts 14–20 depend on parent tables described below. Create parent tables before running those scripts and ensure their key types and indexes match. The account needs permission to create tables.

## Assumptions

- The assignment omits data types for most columns. Types follow common HR schema conventions: country IDs are `CHAR(2)`, job IDs are `VARCHAR(10)` in Questions 14 and 16, employee IDs are integers, and date fields use `DATE`. Questions 17–20 use the assignment's integer `jobs.job_id`.
- Question 8's `--/--/----` is read as day/month/four-digit-year input. A MySQL `DATE` stores a date value rather than a display mask, and is normally rendered `YYYY-MM-DD`. Parse text input such as `26/10/2026` with `STR_TO_DATE('26/10/2026', '%d/%m/%Y')` when inserting.
- Question 10's blank job title is an empty string (`''`). A default is used when the column is omitted or `DEFAULT` is specified; explicitly inserting `NULL` is different.
- Question 12 uses an integer country ID because MySQL `AUTO_INCREMENT` requires an integer column and an index. The column is unique as requested.
- Question 14 uses `UNIQUE` on employee_id as the prompt requests no duplicate values; it does not assume employee_id must be the primary key.
- Question 15 follows the supplied departments definition for that question, where `(department_id, manager_id)` is a composite primary key. Both employee columns are `NOT NULL` so an employee must match a complete pair. The referenced parent columns must be indexed together in that order.
- Question 16 follows its distinct departments definition, where `department_id` is the primary key. A nullable foreign-key column may be NULL; non-NULL values must match the parent.
- Questions 14–20 require each referenced parent key to be a primary key or unique index. Parent and child column types and signedness must match. InnoDB requires parent and child tables to use InnoDB for enforcement.
- The sample parent `jobs.job_id` is `VARCHAR(10)` in Questions 14 and 16, but integer in Questions 17–20. Do not mix these parent schemas with a child answer that expects a different type.
- InnoDB treats `NO ACTION` as `RESTRICT`; the check is immediate, not deferred.
- Current MySQL 8.0 enforces `CHECK` constraints. Older server releases may parse but ignore them; use a current release for Questions 6 and 7.

## Parent-table dependencies and suggested order

Questions 1–13 have no foreign-key parent dependency, though Questions 3 and 4 require `countries` to exist first. Question 14 requires `jobs(job_id)`; Question 15 requires `departments(department_id, manager_id)` as a composite key; Question 16 requires `departments(department_id)` and `jobs(job_id)`; Questions 17–20 each require an integer `jobs(job_id)` primary or unique key.

The source document provides sample parent table structures, but this project does not fabricate parent data or claim sample inserts were tested. If you insert child rows manually, insert matching parent rows first.
