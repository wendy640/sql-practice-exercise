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

-- 🔥 Next 3 challenges

-- Let's make them slightly harder now.

-- Challenge 4 — EXISTS

-- Find employees who work in a department where there is another employee earning more than them.

-- Important: the employee should not compare themselves with themselves.

-- Hint:

-- WHERE EXISTS (
--     SELECT 1
--     FROM company_employees e2
--     WHERE e2.department_id = e.department_id
--       AND e2.salary > e.salary
-- )
-- Challenge 5 — NOT EXISTS

-- Find employees who are the highest-paid employee in their department.

-- Hint:

-- Think about the opposite of Challenge 4:

-- "There does NOT exist another employee in my department earning more than me."

-- Challenge 6 — NOT EXISTS

-- Find employees whose department has no employee earning below 70,000.

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
select e.employee_name,e.department_id,e.salary
from company_employees e
where exists(
select 1
from company_employees e2
where e2.department_id = e.department_id
and e2.salary > e.salary
)

select e.employee_name,e.department_id,e.salary
from company_employees e
where not exists(
select 1
from company_employees e2
where e2.department_id = e.department_id
and e2.salary > e.salary
)

select e.employee_name,e.department_id,e.salary
from company_employees e
where not exists(
select 1
from company_employees e2
where e2.department_id = e.department_id
and e.salary < 70000
)


