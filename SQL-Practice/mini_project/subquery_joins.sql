-- Challenge 1

-- Using company_employees and company_departments:

-- Find all employees who earn more than the average salary of the company, and display their department name.

-- Return:

-- employee_name
-- department_name
-- salary

-- You need:

-- JOIN
-- WHERE
-- a subquery using AVG()
-- Challenge 2 🔥

-- Find all employees who earn more than the average salary of the Technical department.

-- Return:

-- employee_name
-- department_name
-- salary

select e.employee_name,d.department_name,e.salary
from company_employees e
join company_departments d
on d.department_id = e.department_id
where e.salary > (
select avg(e2.salary)
from company_employees e2
)
SELECT e.employee_name,
       d.department_name,
       e.salary
FROM company_employees e
JOIN company_departments d
    ON d.department_id = e.department_id
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM company_employees e2
    JOIN company_departments d2
        ON d2.department_id = e2.department_id
    WHERE d2.department_name = 'Technical'
);
