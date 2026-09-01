-- Exercise 1 — Using our company_employees

-- Let's use the table we've been building.

-- Write a query that returns:

-- employee_name
-- salary

-- but uses NULLIF() to turn a salary of 80,000 into NULL.


-- Exercise 2 — NULLIF() with COALESCE()

-- Now let's combine the two functions we've learned.

-- Write a query that returns:

-- employee_name
-- salary_status

-- If the employee's salary is 80,000, display:

-- Salary not applicable

-- Otherwise, display their actual salary.

-- Let's make this one more practical before moving to GREATEST() and LEAST().

-- Using company_employees, calculate:

-- salary divided by 1000, but if the salary is 0, return NULL instead of attempting the division.

select employee_name,
salary,
nullif(salary, 80000) as adjusted_salary
from company_employees

select employee_name,
coalesce(
nullif(salary, 80000)::text,
'Salary not applicable') as salary_status
from company_employees

select employee_name,
salary/nullif(1000,0) as salary_in_thousands
from company_employees