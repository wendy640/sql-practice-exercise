-- -- Using your company_employees table, write a query that returns:

-- -- The total number of employees and the number of employees whose salary is greater than 100,000.

-- -- Expected columns:

-- -- total_employees | high_salary_employees

-- -- 💡 Hint: You'll need:

-- -- COUNT(*)

-- -- and

-- -- COUNT(CASE WHEN ... THEN 1 END)


-- 🏋️ Your first exercise

-- Using your company_employees table, write a query that returns:

-- The total number of employees and the number of employees whose salary is greater than 100,000.

-- Expected columns:

-- total_employees | high_salary_employees

-- ⭐ Exercise 2 — SUM + CASE

-- Using company_employees, calculate the total salary of employees earning more than 100,000.

-- Return one column:

-- total_high_salary

-- Exercise 3 — CASE + COUNT + GROUP BY

-- Now let's make it more realistic.

-- Using company_employees, return:

-- department_id
-- Total number of employees in each department
-- Number of employees earning more than 100,000 in each department

-- Expected columns:

-- department_id | total_employees | high_salary_employees

-- Using company_employees, find the total salary and the high-salary total for each department.

-- Return:

-- department_id
-- total_salary
-- high_salary_total

-- Where high_salary_total means the total salary of employees earning more than 100,000.

-- You'll need:

-- SUM(salary)

-- and

-- SUM(CASE WHEN ... THEN salary ELSE 0 END)

-- Challenge 5 — Combine everything

-- Let's take it one step further.

-- For each department_id, return:

-- total_employees
-- high_salary_employees → salary > 100,000
-- total_salary
-- high_salary_total

-- So your result should have:

-- department_id
-- total_employees
-- high_salary_employees
-- total_salary
-- high_salary_total
-- Your tools

-- You'll need:

-- GROUP BY
-- COUNT(*)
-- COUNT(CASE WHEN...)
-- SUM(salary)
-- SUM(CASE WHEN...)

-- This is a mini real-world reporting query. 😎

select employee_name,salary,
case 
when salary < 90000 then 5000
when salary between 90000 and 120000 then 7500
else 12000
end as Bonus
from company_employees

select count(*) as total_employees,count(
case
when salary >100000 then 1 end 
) as high_salary_employees
from company_employees

select sum(
case 
when salary > 100000 then salary else 0 end
) as total_high_salary
from company_employees

select department_id,
count(*),
count(
case
when salary > 100000 then 1 end
) as high_salary_employees
from company_employees
group by department_id

select department_id,
sum(salary) as total_salary,
sum(
case 
when salary > 100000 then salary else 0 end
) as high_salary_total
from company_employees
group by department_id