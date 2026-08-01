-- 🎫 Ticket #401 — Employee Directory

-- The HR manager wants a list of employees together with the department they belong to.

-- Return:

-- employee_name
-- department_name

-- Requirements

-- Use INNER JOIN
-- Sort alphabetically by employee_name
select company_employees.employee_name as employee_name,company_departments.department_name as department_name
from company_employees
inner join company_departments 
on company_employees.department_id = company_departments.department_id
order by employee_name asc
-- 🎫 Ticket #402 — Project Ownership

-- Management wants to know which department owns each project.

-- Return

-- project_name
-- department_name
-- budget

-- Requirements

-- INNER JOIN
-- Sort by budget (highest first)
SELECT company_projects.project_name AS project_name,
       company_departments.department_name AS department_name,
       company_projects.budget AS budget
FROM company_projects
INNER JOIN company_departments
ON company_projects.department_id = company_departments.department_id
ORDER BY budget DESC;
-- 🎫 Ticket #403 — Employee Assignments

-- The PM wants to know who is working on which project.

-- Return

-- employee_name
-- project_name
-- role

-- Requirements

-- Use:

-- employees
-- assignments
-- projects

-- Sort by

-- project_name
-- employee_name
-- 🎫 Ticket #404 — Department Workload

-- Management wants a report showing every project together with the department responsible.

-- Return

-- department_name
-- project_name
-- budget

-- Sort by

-- department_name
-- project_name
-- 🎫 Ticket #405 — Project Team Report ⭐

-- Create a report showing

-- project_name
-- employee_name
-- role
-- department_name

-- Requirements

-- Use all four tables

-- Sort by

-- department_name
-- project_name
-- employee_name

-- This is almost identical to what you'll write in an Application Support job.

-- 🎫 Ticket #406 — Find Only IT Projects

-- The IT Director only wants projects owned by the IT department.

-- Return

-- project_name
-- budget
-- department_name

-- Requirements

-- INNER JOIN
-- WHERE department_name = 'IT'

-- Sort by budget descending.

-- 🎫 Ticket #407 — Employees Working on High Budget Projects

-- Management wants employees assigned to projects whose budget exceeds ₦1,000,000.

-- Return

-- employee_name
-- project_name
-- budget
-- role

-- Requirements

-- Use

-- employees
-- assignments
-- projects

-- Sort by budget descending.

-- 🎫 Ticket #408 — Employee Count Per Department

-- The HR Director wants to know how many employees each department has.

-- Return

-- department_name
-- total_employees

-- Requirements

-- Use

-- departments
-- employees

-- Use

-- INNER JOIN
-- COUNT()
-- GROUP BY

-- Sort by total_employees descending.

-- 🎫 Ticket #409 — Number of Employees Per Project ⭐⭐

-- Management wants to know the size of each project team.

-- Return

-- project_name
-- team_size

-- Requirements

-- Use

-- projects
-- assignments

-- Count the employees assigned to each project.

-- Sort by

-- team_size DESC
-- project_name
-- 🏆 Final Boss Challenge — Company Dashboard

-- Without looking at your notes...

-- Generate a report showing:

-- Department Name
-- Project Name
-- Employee Name
-- Role
-- Budget

-- Requirements:

-- Use all 4 tables
-- Only show projects with a budget greater than ₦1,000,000
-- Sort by:
-- department_name
-- project_name
-- employee_name
-- 💡 Bonus Challenge (Closer to Real Application Support)

-- Imagine a user reports:

-- "I can't see who is assigned to Project Phoenix."

-- Write a query that displays:

-- project_name
-- employee_name
-- role
-- department_name

-- Filter for: