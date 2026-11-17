-- Question 8: Store end_date as a native MySQL DATE.
CREATE TABLE job_histry (
    employee_id   INT,
    start_date    DATE,
    end_date      DATE NOT NULL,
    job_id        VARCHAR(10),
    department_id INT
);
