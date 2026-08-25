-- Exercise 1

-- Display:

-- employee_name
-- hire_date
-- the year each employee was hired.

-- Use EXTRACT().

-- Exercise 2

-- Display:

-- employee_name
-- hire_date
-- the month they were hired.

-- Again, use EXTRACT().

-- Exercise 3

-- Display:

-- employee_name
-- hire_date
-- the number of days they've worked up to today.

-- Use:

-- CURRENT_DATE
-- Exercise 4

-- Display:

-- employee_name
-- hire_date
-- their employment duration in years/months/days.

-- Use:

-- AGE()
-- Exercise 5 ⭐

-- Find employees who were hired within the last 1 year.

-- Use:

-- CURRENT_DATE

-- and:

-- INTERVAL


select first_name,
last_name,
extract( year from hire_date) as hire_year
from employees

select first_name,last_name,
extract(month from hire_date) as hire_month
from employees

select first_name,last_name,
extract(day from hire_date) as hire_day
from employees

select first_name,
last_name,
age(current_date, hire_date) as duration
from employees

select *
from employees
where hire_date >= current_date - interval '1 year' 
