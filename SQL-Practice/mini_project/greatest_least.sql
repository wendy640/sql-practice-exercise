-- Using your company_employees table:

-- Return:

-- employee_name
-- salary
-- minimum_salary

-- Where minimum_salary should ensure that no employee's displayed salary is below 80,000.

-- Now let's reverse it.

-- Using company_employees, return:

-- employee_name
-- salary
-- maximum_salary

-- Where maximum_salary should ensure that no employee's displayed salary is above 90,000.



select employee_name,
salary,
greatest(salary,80000) as minimum_salary
from company_employees

select employee_name,
salary,
least(salary,90000) as minimum_salary
from company_employees