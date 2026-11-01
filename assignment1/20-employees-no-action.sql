-- Question 20: InnoDB NO ACTION is equivalent to immediate RESTRICT.
-- Parent deletes and key updates are rejected while matching child rows exist.
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
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
