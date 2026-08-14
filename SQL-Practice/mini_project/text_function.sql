-- ⭐ Exercise 1

-- Using company_employees, return:

-- employee_name
-- employee name in uppercase

-- Call the second column:

-- uppercase_name
-- ⭐⭐ Exercise 2

-- Return:

-- employee_name
-- lowercase employee name
-- length of the employee name

-- Use these aliases:

-- lowercase_name
-- name_length
-- ⭐⭐⭐ Exercise 3

-- Using first_name and last_name, create:

-- full_name

-- with a space between them.

-- ⭐⭐⭐⭐ Exercise 4

-- Return:

-- employee_name
-- employee name with spaces replaced by -

-- Call it:

-- formatted_name
-- 🏆 Exercise 5 — Combine Functions

-- Return:

-- employee_name
-- a cleaned version of the name
-- the length of the cleaned name

-- The cleaned name should:

-- Have surrounding spaces removed.
-- Be converted to uppercase.



select employee_name,upper(employee_name) as uppercase_name
from company_employees

select employee_name,lower(employee_name) as lowercase_name,length(employee_name) as name_length
from company_employees

select CONCAT(first_name, ' ', last_name) AS full_name
from employees