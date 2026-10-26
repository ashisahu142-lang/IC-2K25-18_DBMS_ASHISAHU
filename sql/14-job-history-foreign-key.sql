-- Question 14: Requires jobs(job_id) to be PRIMARY KEY or UNIQUE.
CREATE TABLE job_history (
    employee_id   INT NOT NULL,
    start_date    DATE NOT NULL,
    end_date      DATE NOT NULL,
    job_id        VARCHAR(10) NOT NULL,
    department_id INT,
    CONSTRAINT uq_job_history_employee UNIQUE (employee_id),
    CONSTRAINT fk_job_history_job
        FOREIGN KEY (job_id) REFERENCES jobs (job_id)
) ENGINE=InnoDB;
