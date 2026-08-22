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

-- ⭐ Exercise 1 — CONCAT_WS

-- Return:

-- first_name
-- last_name
-- a full_name created using CONCAT_WS()

-- Use a space as the separator.

-- ⭐⭐ Exercise 2 — LEFT + RIGHT

-- Return:

-- employee_name
-- first 3 characters
-- last 3 characters

-- Aliases:

-- first_three
-- last_three
-- ⭐⭐⭐ Exercise 3 — INITCAP

-- Return:

-- employee_name
-- a properly capitalized version using INITCAP()

-- Alias:

-- formatted_name
-- ⭐⭐⭐⭐ Exercise 4 — POSITION

-- Return:

-- employee_name
-- the position of the letter a

-- Alias:

-- a_position
-- 🏆 Exercise 5 — Combining Functions

-- Create:

-- employee_name
-- formatted_name
-- first_three
-- last_three

-- Where:

-- formatted_name uses INITCAP()
-- first_three uses LEFT()
-- last_three uses RIGHT()
-- 🔥 Final Challenge

-- Using employee_id, create a column called:

-- formatted_id

-- where every employee ID is displayed as 5 digits, padded with zeros.



select employee_name,upper(employee_name) as uppercase_name
from company_employees

select employee_name,lower(employee_name) as lowercase_name,length(employee_name) as name_length
from company_employees

select CONCAT(first_name, ' ', last_name) AS full_name
from employees

select 
concat_ws(' ', first_name,  last_name) as full_name
from employees

select 
first_name,
last_name,
left(first_name,3) as first_three,
right(last_name,3) as last_three
from employees

select
initcap(first_name) as formatted_name
from employees

select 
first_name,
position('a' in first_name) as a_position
from employees

select
first_name,
last_name,
INITCAP(first_name) as formatted_name,
left(first_name,3) first_three,
right(last_name,3) last_name
from employees

select
lpad(employee_id::text, 5, '0') as formatted_id
from employees 
