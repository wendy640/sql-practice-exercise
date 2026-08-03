-- Challenge 1 ⭐

-- Display:

-- employee_name
-- role

-- Return all assignments, even when an employee doesn't exist.

-- Order by role.

-- Challenge 2 ⭐⭐

-- Display

-- project_name
-- employee_name
-- role

-- Return every assignment, even if the employee record is missing.

-- Sort by project_name.

select e.employee_name AS employee_name,
a.role AS role
from company_employees e
right join company_assignments a
on e.employee_id = a.employee_id
order by a.role

select p.project_name AS project_name,
d.department_name AS department_name
from company_projects p
right join company_departments d on
p.department_id =d.department_id
order by p.project_name


