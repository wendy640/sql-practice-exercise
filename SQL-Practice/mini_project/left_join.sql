-- Practice Challenges
-- 🎫 Ticket #501

-- Return

-- employee_name
-- role

-- Requirements

-- Show every employee
-- Include employees with no assignment
-- Sort by employee_name
-- 🎫 Ticket #502

-- Return

-- project_name
-- role

-- Requirements

-- Show every project.

-- If a project has no assignment, it should still appear.

-- 🎫 Ticket #503

-- Return

-- employee_name
-- department_name
-- role

-- Requirements

-- Show every employee
-- Employees without assignments must still appear

-- Use:

-- employees
-- departments
-- assignments
-- 🎫 Ticket #504

-- Management wants a list of projects and the number of employees assigned to each.

-- Requirements

-- Return:

-- project_name
-- team_size

-- Projects with zero employees must also appear.

-- (Hint: You'll need LEFT JOIN, COUNT(), and GROUP BY.)

-- 🎫 Ticket #505 ⭐

-- Find employees who have not been assigned to any project.

-- Return:

-- employee_name
-- department_name

-- (Hint: LEFT JOIN + WHERE ... IS NULL.)

-- 🏆 Final Boss Challenge

-- Generate a report showing:

-- department_name
-- employee_name
-- project_name
-- role

-- Requirements:

-- Show every employee, even if they have no project.
-- Include the department for every employee.
-- If an employee has no project, the project and role should display as NULL.
-- Sort by:
-- department_name
-- employee_name

select e.employee_name as employee_name,
a.role as role
from company_employees e
left join company_assignments a on 
e.employee_id  = a.employee_id 
order by e.employee_name

select p.project_name as project_name,
a.role as role
from company_projects p
left join company_assignments a on
p.project_id = a.project_id 

select e.employee_name as employee_name,
d.department_name as department_name,
a.role as role
from company_employees e
left join company_assignments a on 
e.employee_id  = a.employee_id 
left join company_departments d on
e.department_id = d.department_id

SELECT
p.project_name,
COUNT(a.employee_id) AS team_size
FROM company_projects p
LEFT JOIN company_assignments a
ON p.project_id = a.project_id
GROUP BY p.project_name;

SELECT
e.employee_name,
d.department_name
FROM company_employees e
INNER JOIN company_departments d
ON e.department_id = d.department_id
LEFT JOIN company_assignments a
ON e.employee_id = a.employee_id
WHERE a.assignment_id IS NULL;

SELECT d.department_name AS department_name,
e.employee_name AS employee_name,
p.project_name AS project_name,
a.role AS role
FROM company_employees e
LEFT JOIN company_assignments a
ON e.employee_id = a.employee_id
LEFT JOIN company_projects p
ON a.project_id = p.project_id
LEFT JOIN company_departments d
ON e.department_id = d.department_id
ORDER BY d.department_name,e.employee_name
