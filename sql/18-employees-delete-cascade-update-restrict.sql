-- Question 18: Parent job deletes cascade to employees; updates are restricted.
-- Requires jobs(job_id) as PRIMARY KEY or UNIQUE and InnoDB on both tables.
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name  VARCHAR(20),
    last_name   VARCHAR(25),
    job_id      INT,
    salary      DECIMAL(8,2),
    CONSTRAINT uq_employees_employee_id UNIQUE (employee_id),
    CONSTRAINT fk_employees_job
        FOREIGN KEY (job_id) REFERENCES jobs (job_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;
