-- Question 8: Store end_date as a native MySQL DATE.
-- MySQL stores a DATE value canonically, not as a display mask.
-- Convert DD/MM/YYYY input with STR_TO_DATE(value, '%d/%m/%Y') on INSERT.
-- Example: STR_TO_DATE('31/12/2025', '%d/%m/%Y')
CREATE TABLE job_history (
    employee_id   INT,
    start_date    DATE,
    end_date      DATE NOT NULL,
    job_id        VARCHAR(10),
    department_id INT
);
