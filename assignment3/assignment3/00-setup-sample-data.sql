-- Reproducible test schema and sample rows for Assignment 3.
-- Run this once before running question scripts.
CREATE DATABASE IF NOT EXISTS mysql_db_assignment_3;
USE mysql_db_assignment_3;

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    hire_date DATE NOT NULL,
    job VARCHAR(50) NOT NULL
);

INSERT IGNORE INTO employees (employee_id, first_name, last_name, salary, department_id, hire_date, job) VALUES
(1, 'Rebecca', 'BLAKE',  9000.00, 30,  '1987-02-10', 'Programmer'),
(2, 'Barbara', 'SCOTT', 10000.00, 100, '1987-07-15', 'Shipping Clerk'),
(3, 'Cecilia', 'KING',  16000.00, 30,  '1986-11-20', 'Programmer'),
(4, 'Bob',     'FORD',   4500.00, 50,  '1987-12-31', 'Shipping Clerk'),
(5, 'Chris',   'GREEN', 12000.00, 100, '1988-01-01', 'Manager'),
(6, 'Abc',     'BREEZY', 8000.00, 30,  '1987-05-01', 'Shipping Clerk'),
(7, 'Bobby',   'SMITH', 15000.00, 20,  '1985-04-03', 'Analyst'),
(8, 'Chloe',   'ANDERS', 7000.00, 100, '1987-09-09', 'Programmer');
