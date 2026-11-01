
# DBMS Assignment 1 — MySQL Solutions

This repository contains MySQL solutions for all 20 questions from DBMS Assignment 1.

Each question has a separate, numbered SQL file. The numbering follows the original assignment order for easy navigation and verification.

## Prerequisites

- MySQL 8.0.16 or later
- InnoDB storage engine for foreign key constraints
- A MySQL database with CREATE privileges
- Required parent tables for foreign key questions (14–20)

## How to Run

1. Open MySQL Workbench or your MySQL terminal.
2. Select your practice database.
3. Open the SQL file corresponding to the question.
4. Execute the SQL statement.

Example:

```sql
CREATE DATABASE dbms_assignment;
USE dbms_assignment;
```

Execute individual SQL files separately.

**Note:** Several questions reuse table names with different definitions. Therefore, execute each question in a separate practice schema or reset the relevant tables before execution.

## Repository Structure

```text
DBMS-All-Assignments/
│
├── assignment1/
│   ├── 01-create-countries.sql
│   ├── 02-create-countries-if-not-exists.sql
│   ├── 03-duplicate-countries-structure.sql
│   ├── 04-duplicate-countries-data-and-structure.sql
│   ├── 05-countries-null-constraint.sql
│   ├── 06-jobs-check-max-salary.sql
│   ├── 07-countries-allowed-names.sql
│   ├── 08-job-history-end-date.sql
│   ├── 09-countries-unique-country-id.sql
│   ├── 10-jobs-default-values.sql
│   ├── 11-countries-primary-key.sql
│   ├── 12-countries-auto-increment.sql
│   ├── 13-countries-composite-unique.sql
│   ├── 14-job-history-foreign-key.sql
│   ├── 15-employees-composite-department-manager-fk.sql
│   ├── 16-employees-department-and-job-fks.sql
│   ├── 17-employees-update-cascade-delete-restrict.sql
│   ├── 18-employees-delete-cascade-update-restrict.sql
│   ├── 19-employees-set-null-actions.sql
│   └── 20-employees-no-action.sql
│
├── assignment2/
├── assignment3/
├── assignment4/
├── assignment5/
│
└── README.md
```

## Question Index

| No. | Question | SQL File |
|---|---|---|
| 01 | Create a basic countries table | [View SQL](assignment1/01-create-countries.sql) |
| 02 | Create countries only if absent | [View SQL](assignment1/02-create-countries-if-not-exists.sql) |
| 03 | Duplicate countries structure only | [View SQL](assignment1/03-duplicate-countries-structure.sql) |
| 04 | Duplicate countries structure and data | [View SQL](assignment1/04-duplicate-countries-data-and-structure.sql) |
| 05 | Allow NULL values in countries | [View SQL](assignment1/05-countries-null-constraint.sql) |
| 06 | Check maximum job salary | [View SQL](assignment1/06-jobs-check-max-salary.sql) |
| 07 | Restrict allowed country names | [View SQL](assignment1/07-countries-allowed-names.sql) |
| 08 | Define job history end date | [View SQL](assignment1/08-job-history-end-date.sql) |
| 09 | Make country_id unique | [View SQL](assignment1/09-countries-unique-country-id.sql) |
| 10 | Set job title and salary defaults | [View SQL](assignment1/10-jobs-default-values.sql) |
| 11 | Use country_id as primary key | [View SQL](assignment1/11-countries-primary-key.sql) |
| 12 | Make country_id auto-increment | [View SQL](assignment1/12-countries-auto-increment.sql) |
| 13 | Add composite unique constraint | [View SQL](assignment1/13-countries-composite-unique.sql) |
| 14 | Add job history foreign key | [View SQL](assignment1/14-job-history-foreign-key.sql) |
| 15 | Add composite department/manager foreign key | [View SQL](assignment1/15-employees-composite-department-manager-fk.sql) |
| 16 | Add department and job foreign keys | [View SQL](assignment1/16-employees-department-and-job-fks.sql) |
| 17 | Cascade updates and restrict deletions | [View SQL](assignment1/17-employees-update-cascade-delete-restrict.sql) |
| 18 | Cascade deletions and restrict updates | [View SQL](assignment1/18-employees-delete-cascade-update-restrict.sql) |
| 19 | Set child job IDs to NULL | [View SQL](assignment1/19-employees-set-null-actions.sql) |
| 20 | Apply NO ACTION referential behavior | [View SQL](assignment1/20-employees-no-action.sql) |

## Important Notes

- Each SQL file represents an individual assignment question.
- Execute scripts independently.
- Foreign key questions require the appropriate parent tables.
- Review the SQL comments before execution.

---

**Assignment:** DBMS Assignment 1  
**Language:** MySQL  
**Total Questions:** 20

