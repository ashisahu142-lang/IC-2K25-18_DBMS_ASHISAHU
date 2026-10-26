# DBMS Assignment 1 — MySQL Solutions

This project answers all 20 questions in the original DBMS Assignment 1 document. The numbered SQL files preserve the question order and intent. The original source document is included in `assignment/`. See [database notes](docs/database-notes.md) for assumptions, parent-table dependencies, and MySQL behavior.

## Prerequisites

- MySQL 8.0.16 or later
- InnoDB for questions that use foreign keys and referential actions
- A selected development schema and an account with `CREATE` privileges
- Existing parent tables for foreign-key questions 14–20

## Set up and run a solution

Create or select a practice database, then run only the script for the question you want to execute. For example:

```sh
mysql -u USER -p DATABASE < sql/01-create-countries.sql
```

Replace `USER` and `DATABASE` with your local account and schema. Most questions reuse a table name while changing its definition, so do not concatenate every file into one schema. Scripts do not drop tables. For questions 14–20, create the required parent table first, matching the column type and referenced key shown in the source and in [database notes](docs/database-notes.md).

## Repository structure

```text
assignment/dbms-assignment-1.docx   Original assignment source
sql/                                20 numbered MySQL answers
docs/database-notes.md              Assumptions and dependencies
README.md                           Project setup and question index
.gitignore                          Local scratch and OS-file exclusions
```

## Question index

1. [Create a basic `countries` table](sql/01-create-countries.sql)
2. [Create `countries` only if absent](sql/02-create-countries-if-not-exists.sql)
3. [Copy `countries` structure only](sql/03-duplicate-countries-structure.sql)
4. [Copy `countries` structure and data](sql/04-duplicate-countries-data-and-structure.sql)
5. [Allow `NULL` values in `countries`](sql/05-countries-null-constraint.sql)
6. [Check maximum job salary](sql/06-jobs-check-max-salary.sql)
7. [Limit country names to Italy, India, and China](sql/07-countries-allowed-names.sql)
8. [Define a job history end date](sql/08-job-history-end-date.sql)
9. [Make `country_id` unique](sql/09-countries-unique-country-id.sql)
10. [Set job title and salary defaults](sql/10-jobs-default-values.sql)
11. [Use `country_id` as primary key](sql/11-countries-primary-key.sql)
12. [Make integer `country_id` auto-increment and unique](sql/12-countries-auto-increment.sql)
13. [Add a composite unique constraint](sql/13-countries-composite-unique.sql)
14. [Add unique employee ID and job foreign key](sql/14-job-history-foreign-key.sql)
15. [Reference the department/manager composite key](sql/15-employees-composite-department-manager-fk.sql)
16. [Add department and job foreign keys](sql/16-employees-department-and-job-fks.sql)
17. [Cascade job ID updates; restrict job deletion](sql/17-employees-update-cascade-delete-restrict.sql)
18. [Cascade job deletion; restrict job ID updates](sql/18-employees-delete-cascade-update-restrict.sql)
19. [Set child job IDs to `NULL` on parent changes](sql/19-employees-set-null-actions.sql)
20. [Reject parent changes with `NO ACTION`](sql/20-employees-no-action.sql)

## Troubleshooting

- **Table already exists:** choose a fresh practice schema or resolve the existing table deliberately. The scripts do not delete tables.
- **Foreign key cannot be created:** check that the parent exists, is InnoDB, has the referenced key indexed, and has matching child/parent column types and signedness. For the composite key in Question 15, the columns and order must match.
- **Foreign-key insert is rejected:** insert a matching parent row first. A NULL child key is accepted only where that column allows NULL.
- **`CHECK` constraints do not reject bad values:** use a current MySQL 8.0 release.
- **Date output is `YYYY-MM-DD`:** MySQL stores a DATE value, not its original text format. Parse day/month/year input with `STR_TO_DATE(value, '%d/%m/%Y')`.
- **A default was not used:** omit the column or use `DEFAULT`; explicitly inserting `NULL` does not request the column default.
