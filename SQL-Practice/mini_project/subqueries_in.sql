-- Find all employees who work in a department where Alice or Emma works.

-- 🏋️ Challenge 1 — IN + Multiple Results

-- Find all employees who work in any department that has an employee earning more than 90,000.

-- Think about it in two steps:

-- Find the department_ids where someone earns more than 90,000.
-- Find all employees whose department_id is in those departments.

-- Don't use EXISTS yet.

-- 🏋️ Challenge 2 — IN + Subquery

-- Find all employees who work in the same departments as employees named Alice, Bob, or Emma.

-- Return:

-- employee_name
-- department_id
-- salary

select employee_name,department_id
from company_employees
where department_id in (
select department_id
from company_employees
where employee_name in ('Alice', 'Emma')
)
