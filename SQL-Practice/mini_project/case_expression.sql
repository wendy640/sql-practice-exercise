-- Using company_employees, write a query that displays:

-- employee_name
-- salary
-- a new column called salary_category


-- 🧠 Exercise 2 — CASE with another column

-- Let's make it a little more practical.

-- Using company_employees, write a query that displays:

-- employee_name
-- department_id
-- a new column called department_type

-- Use:

-- department_id = 1 → 'Management'
-- department_id = 2 → 'Technical'
-- department_id = 3 → 'Operations'
-- anything else → 'Other'

-- 🔥 Exercise 3 — CASE + salary calculation

-- Let's make it slightly more practical.

-- Using company_employees, write a query that displays:

-- employee_name
-- salary
-- a new column called bonus

-- Rules:

-- Salary	Bonus
-- Less than 90,000	5,000
-- 90,000–120,000	7,500
-- Above 120,000	10,000




select employee_name,salary,
case 
when salary < 90000 then 'Low'
when salary between 90000 and 120000 then 'Medium'
else 'High'
end as salary_category
from company_employees

select employee_name,
department_id,
case 
when department_id = 1 then 'Management'
when department_id = 2 then 'Technical'
when department_id = 3 then 'Operations'
else  'Other'
end as department_type
from company_employees


select employee_name,salary,
case 
when salary < 90000 then 5000
when salary between 90000 and 120000 then 7500
else 12000
end as Bonus
from company_employees