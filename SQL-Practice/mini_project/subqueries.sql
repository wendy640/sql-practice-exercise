-- Exercise 1 — Above Average

-- Find all employees whose salary is greater than the company's average salary.

-- Exercise 2 — Highest Salary

-- Find the employee(s) whose salary is equal to the highest salary in the company.

-- Exercise 3 — Below Average

-- Find all employees whose salary is below the average salary.

-- Exercise 4 — Same Department as Alice

-- Find all employees who work in the same department as Alice.

-- Hint: first find Alice's department_id.

-- Exercise 5 — Higher Than Alice

-- Find all employees whose salary is greater than Alice's salary.


select employee_name,salary
from company_employees
where salary > (
select AVG(salary)
from company_employees
)

select employee_name
from company_employees
where salary = (
select max(salary)
from company_employees
)

select employee_name
from company_employees
where salary < (
select avg(salary)
from company_employees
)
select employee_name,department_id
from company_employees
where department_id=(select department_id
from company_employees
where employee_name = 'Alice' )

