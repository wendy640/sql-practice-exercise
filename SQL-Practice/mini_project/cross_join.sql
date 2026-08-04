-- Exercise 1 ⭐

-- Return

-- employee_name
-- project_name

-- Requirements

-- Generate every possible employee-project combination.

-- Sort by:

-- employee_name
-- project_name

-- Exercise 4 ⭐⭐⭐

-- Management wants to see every possible assignment opportunity.

-- Return:

-- employee_name
-- project_name
-- role

-- Requirements:

-- Generate every employee-project combination.
-- If a matching assignment exists, show the role.
-- Otherwise, display NULL.

-- 💡 Hint: Start with a CROSS JOIN between employees and projects, then LEFT JOIN the assignments table.


select e.employee_name AS employee_name,
p.project_name AS project_name
from company_employees e 
cross join company_projects p
order by  e.employee_name,p.project_name 

select e.employee_name AS employee_name,
p.project_name AS project_name,
a.role AS role
from company_employees e 
cross join company_projects p
left join company_assignments a
on e.employee_id = a.employee_id AND p.project_id = a.project_id
order by  e.employee_name,p.project_name 