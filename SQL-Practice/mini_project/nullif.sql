-- Exercise 1 — Using our company_employees

-- Let's use the table we've been building.

-- Write a query that returns:

-- employee_name
-- salary

-- but uses NULLIF() to turn a salary of 80,000 into NULL.


select employee_name,
salary,
nullif(salary, 80000)
from company_employees