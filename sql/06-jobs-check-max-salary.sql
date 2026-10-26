-- Question 6: A non-NULL maximum salary cannot exceed 25,000.
CREATE TABLE jobs (
    job_id     VARCHAR(10) NOT NULL,
    job_title  VARCHAR(35) NOT NULL,
    min_salary DECIMAL(6,0),
    max_salary DECIMAL(6,0),
    CONSTRAINT chk_jobs_max_salary CHECK (max_salary <= 25000)
);
