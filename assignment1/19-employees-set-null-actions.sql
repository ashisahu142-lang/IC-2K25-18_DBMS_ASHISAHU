-- Question 19: Parent deletes or updates set child job IDs to NULL.
-- job_id must remain nullable; both tables must use InnoDB.
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name  VARCHAR(20),
    last_name   VARCHAR(25),
    job_id      INT NULL,
    salary      DECIMAL(8,2),
    CONSTRAINT uq_employees_employee_id UNIQUE (employee_id),
    CONSTRAINT fk_employees_job
        FOREIGN KEY (job_id) REFERENCES jobs (job_id)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;
