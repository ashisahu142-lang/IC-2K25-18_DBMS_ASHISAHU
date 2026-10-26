-- Question 15: Requires departments(department_id, manager_id) as a composite
-- PRIMARY KEY or UNIQUE key, matching the supplied parent-table definition.
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
    manager_id    DECIMAL(6,0) NOT NULL,
    department_id DECIMAL(4,0) NOT NULL,
    CONSTRAINT uq_employees_employee_id UNIQUE (employee_id),
    CONSTRAINT fk_employees_department_manager
        FOREIGN KEY (department_id, manager_id)
        REFERENCES departments (department_id, manager_id)
) ENGINE=InnoDB;
