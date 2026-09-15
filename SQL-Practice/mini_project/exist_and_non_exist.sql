-- Challenge 1 — EXISTS

-- Find all employees who work in a department where at least one employee earns 85,000 or more.

-- Return:

-- employee_name
-- department_id
-- salary

-- Use EXISTS.

-- Challenge 2 — EXISTS

-- Find all employees who work in a department where at least one employee earns less than 70,000.

-- Again, use EXISTS.

-- Challenge 3 — NOT EXISTS

-- Find all employees who work in a department where no employee earns more than 90,000.

-- Use NOT EXISTS.

select e.employee_name,e.department_id,e.salary
from company_employees e
where exists(
select 1
from company_employees e2
where e2.department_id = e.department_id
and e2.salary >= 85000
)

select e.employee_name,e.department_id,e.salary
from company_employees e
where exists(
select 1
from company_employees e2
where e2.department_id = e.department_id
and e.salary < 70000
)
select e.employee_name,e.department_id,e.salary
from company_employees e
where not exists(
select 1
from company_employees e2
where e2.department_id = e.department_id
and e.salary > 90000
)


