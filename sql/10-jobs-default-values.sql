-- Question 10: Apply defaults when these columns are omitted or DEFAULT is used.
CREATE TABLE jobs (
    job_id     VARCHAR(10) NOT NULL,
    job_title  VARCHAR(35) NOT NULL DEFAULT '',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);
