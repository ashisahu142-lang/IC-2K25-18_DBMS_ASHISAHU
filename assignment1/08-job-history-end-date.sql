-- Question 8: Store end_date as a native MySQL DATE.
-- MySQL stores a DATE value canonically, not as a display mask.
-- Convert DD/MM/YYYY input with STR_TO_DATE(value, '%d/%m/%Y') on INSERT.
-- Q8 spells the table job_histry; preserve that source identifier.
-- Example insert for DD/MM/YYYY input:
-- INSERT INTO job_histry (employee_id, start_date, end_date)
-- VALUES (1, STR_TO_DATE('01/01/2025', '%d/%m/%Y'),
--         STR_TO_DATE('31/12/2025', '%d/%m/%Y'));
CREATE TABLE job_histry (
    employee_id   INT,
    start_date    DATE,
    end_date      DATE NOT NULL,
    job_id        VARCHAR(10),
    department_id INT
);
