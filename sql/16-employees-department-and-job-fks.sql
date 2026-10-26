-- Question 16: Requires departments(department_id) and jobs(job_id) as
-- PRIMARY KEY or UNIQUE keys. Parent and child tables must use InnoDB.
CREATE TABLE employees (
    employee_id   INT NOT NULL,
    first_name    VARCHAR(20),
    last_name     VARCHAR(25),
    email         VARCHAR(100),
    phone_number  VARCHAR(20),
    hire_date     DATE,
    job_id        VARCHAR(10),
    salary        DECIMAL(8,2),
    commission    DECIMAL(4,2),
    manager_id    INT,
    department_id DECIMAL(4,0),
    CONSTRAINT uq_employees_employee_id UNIQUE (employee_id),
    CONSTRAINT fk_employees_department
        FOREIGN KEY (department_id) REFERENCES departments (department_id),
    CONSTRAINT fk_employees_job
        FOREIGN KEY (job_id) REFERENCES jobs (job_id)
) ENGINE=InnoDB;
