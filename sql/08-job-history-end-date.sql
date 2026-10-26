-- Question 8: Store end_date as a native MySQL DATE.
-- Parse DD/MM/YYYY input using STR_TO_DATE(value, '%d/%m/%Y') on INSERT.
CREATE TABLE job_history (
    employee_id   INT,
    start_date    DATE,
    end_date      DATE NOT NULL,
    job_id        VARCHAR(10),
    department_id INT
);
