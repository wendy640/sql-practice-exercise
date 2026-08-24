-- Exercise 1

-- Write a query that displays:

-- employee_name
-- salary
-- salary rounded to 2 decimal places

-- Use ROUND().

-- Exercise 2

-- Display:

-- employee_name
-- salary
-- salary rounded down

-- Use FLOOR().

-- Exercise 3

-- Display:

-- employee_name
-- salary
-- the absolute difference between the employee's salary and 100000

-- Use ABS().

-- Exercise 4

-- Display each employee's employee_id and determine whether the ID is even or odd using MOD().

select employee_name,upper(employee_name) as uppercase_name
from company_employees

select employee_name,lower(employee_name) as lowercase_name,length(employee_name) as name_length
from company_employees

select employee_name, 
round(salary, 2) 
from company_employees

select employee_name,
floor(salary) 
from company_employees

select employee_name,
ceil(salary) 
from company_employees

select employee_name,
abs(salary - 100000) as salary_difference
from company_employees

select employee_name,
power(salary) 
from company_employees

select employee_name,
sqrt(salary) 
from company_employees




