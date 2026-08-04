-- Exercise 1

-- Show every employee and their manager.

-- Expected columns:

-- employee_name
-- manager_name
-- Exercise 2

-- Count how many employees each manager supervises.

-- Expected columns:

-- manager_name
-- total_employees
-- Exercise 3

-- Show employees who do not have a manager.

-- (Hint: use a LEFT JOIN on the same table and check for NULL.)

-- Exercise 4 ⭐

-- Show:

-- Employee
-- Manager
-- Department

-- This combines:

-- SELF JOIN
-- LEFT JOIN
-- Another JOIN

-- You'll use the company_employees table twice and company_departments once.

select e1.employee_name as employee_name,
e2.employee_name as manager_name
from company_employees e1 
join company_employees e2
on e1.manager_id = e2.employee_id

select e2.employee_name as manager_name,
count(e1.manager_id) as total_employees
from company_employees e2 
join company_employees e1
on e1.manager_id = e2.employee_id
group by manager_name

select e1.employee_name as employee_name,
e2.employee_name as manager_name
from company_employees e1 
left join company_employees e2
on e1.manager_id = e2.employee_id

select  e1.employee_name as Employee,
e2.employee_name as Manager,
d.department_name AS Department
from company_employees e1 
left join company_employees e2
on e1.manager_id = e2.employee_id
inner join company_departments d
on e1.department_id = d.department_id
ORDER BY Department, Employee;