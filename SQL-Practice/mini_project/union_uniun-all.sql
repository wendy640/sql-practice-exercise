-- ⭐ Exercise 1 (Easy)

-- Return a single list of names from both tables.

-- Columns:

-- person_name

-- Tables:

-- customers
-- company_employees


SELECT first_name AS person_name
FROM customers

UNION ALL

SELECT first_name AS person_name
FROM employees

ORDER BY person_name;
-- ⭐⭐ Exercise 2

-- Create one report showing:

-- person_name
-- person_type

-- Expected output

-- Alice      Customer
-- Bob        Customer
-- John       Employee
-- Mary       Employee

-- Hint:

-- 'Customer'

-- and

-- 'Employee'
-- ⭐⭐⭐ Exercise 3

-- Using UNION ALL, return:

-- name
-- source

-- Expected:

-- Alice      Customer
-- Bob        Customer
-- John       Employee
-- Mary        Employee

-- Sort alphabetically by name.

-- ⭐⭐⭐⭐ Exercise 4 (Challenge)

-- Using the products table, create a report with:

-- category
-- label

-- First query:

-- Products costing more than ₦100,000

-- Label:

-- Premium

-- Second query:

-- Products costing ₦100,000 or less

-- Label:

-- Standard

-- Combine both with UNION ALL and sort by category.

-- 🎯 Challenge 2

-- Let's level up.

-- Return two columns:

-- person_name
-- person_type

select first_name as person_name,
'Customer' as person_type
from customers
union all
select first_name as person_name,
'Employees' as person_type
from employee
order by person_name

-- Using the products table, write one query that returns:

-- item_name	item_type

-- Requirements:

-- First query:
-- Products with price > 100000
-- Label them as 'Premium'
-- Second query:
-- Products with price <= 100000
-- Label them as 'Standard'
-- Use UNION ALL
-- Sort by item_name alphabetically.
select product_name as item_name,
'Premium' as item_type
from products
where price > 100000 

union all
select product_name as item_name,
'Standard' as item_type
from products
where price <= 100000 
order by item_name asc