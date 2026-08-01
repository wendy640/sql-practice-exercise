CREATE TABLE company_departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO company_departments (department_name)
VALUES
('Engineering'),
('IT Support'),
('Finance'),
('Human Resources'),
('Sales');

CREATE TABLE company_employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    salary DECIMAL(10,2),

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES company_departments(department_id)
);

INSERT INTO company_employees
(employee_name, department_id, salary)
VALUES
('Alice',1,90000),
('Bob',2,75000),
('Chinwe',2,85000),
('David',1,95000),
('Emma',3,70000),
('Frank',4,65000),
('Grace',5,80000),
('Henry',1,88000);

CREATE TABLE company_projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(100),
    department_id INT,
    budget DECIMAL(12,2),

    CONSTRAINT fk_project_department
        FOREIGN KEY (department_id)
        REFERENCES company_departments(department_id)
);

INSERT INTO company_projects
(project_name, department_id, budget)
VALUES
('Website Redesign',1,2500000),
('Customer Portal',2,1800000),
('Payroll System',3,1200000),
('Recruitment App',4,900000),
('CRM Upgrade',5,2100000);

CREATE TABLE company_assignments (
    assignment_id SERIAL PRIMARY KEY,
    employee_id INT,
    project_id INT,
    role VARCHAR(100),

    CONSTRAINT fk_assignment_employee
        FOREIGN KEY (employee_id)
        REFERENCES company_employees(employee_id),

    CONSTRAINT fk_assignment_project
        FOREIGN KEY (project_id)
        REFERENCES company_projects(project_id)
);

INSERT INTO company_assignments
(employee_id, project_id, role)
VALUES
(1,1,'Backend Developer'),
(4,1,'Frontend Developer'),
(2,2,'Support Engineer'),
(3,2,'Application Support'),
(5,3,'Finance Analyst'),
(6,4,'HR Specialist'),
(7,5,'Sales Consultant'),
(8,5,'Technical Lead');

CREATE TABLE company_tickets (
    ticket_id SERIAL PRIMARY KEY,
    employee_id INT,
    project_id INT,
    issue_type VARCHAR(100),
    priority VARCHAR(20),
    status VARCHAR(20),

    CONSTRAINT fk_ticket_employee
        FOREIGN KEY (employee_id)
        REFERENCES company_employees(employee_id),

    CONSTRAINT fk_ticket_project
        FOREIGN KEY (project_id)
        REFERENCES company_projects(project_id)
);

INSERT INTO company_tickets
(employee_id, project_id, issue_type, priority, status)
VALUES
(2,2,'Login Failure','High','Open'),
(3,2,'Database Timeout','High','Resolved'),
(1,1,'API Error','Critical','Open'),
(4,1,'UI Bug','Medium','Closed'),
(5,3,'Payroll Calculation','High','Resolved'),
(7,5,'CRM Sync Failure','Critical','Open'),
(8,5,'Performance Issue','Medium','Closed'),
(2,2,'Password Reset','Low','Closed');

