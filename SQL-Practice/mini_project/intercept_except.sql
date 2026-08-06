-- Exercise 1 – INTERSECT

-- Using:

-- customers
-- employees

-- Return only people whose first_name exists in both tables.

-- ⭐⭐ Exercise 2 – EXCEPT

-- Return customers who are not employees.

-- ⭐⭐⭐ Exercise 3

-- Tables:

-- active_users
-- premium_users

-- Return users who are:

-- Active and Premium (INTERSECT)
-- ⭐⭐⭐⭐ Exercise 4

-- Tables:

-- online_sales
-- refunded_sales

-- Return sales that were not refunded.

select first_name
from customers
intersect
select first_name
from employees

select first_name
from customers
except
select first_name
from employees

select users, 

from active_users
intersect
select users, 

from premium_users