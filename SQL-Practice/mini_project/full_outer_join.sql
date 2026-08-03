-- Write a query that returns:

-- employee_name
-- role

-- Requirements:

-- Show every employee.
-- Show every assignment.
-- Employees without assignments should appear.
-- Assignments without employees should also appear.
-- Sort by employee_name.

select e.employee_name AS employee_name,
a.role AS role
from company_employees e
full outer join company_assignments a
on e.employee_id = a.employee_id
order by e.employee_name

select d.department_name AS department_name,
p.project_name AS project_name
from company_departments d 
full outer join company_projects p  on
d.department_id =p.department_id
order by d.department_name