-- ⭐⭐ Exercise 2

-- Move Henry to Department 1.

-- ⭐⭐⭐ Exercise 3

-- Increase every employee in Department 2 by 5%.

-- ⭐⭐⭐⭐ Exercise 4

-- Using company_audit_log, change:

-- Login

-- to

-- Successful Login

-- for records performed by Alice.

-- ⭐⭐⭐⭐⭐ Final Challenge

-- Update employee salaries using CASE:

-- Salary less than ₦90,000 → add ₦10,000
-- Salary between ₦90,000 and ₦120,000 → add ₦5,000
-- Salary above ₦120,000 → no change

update company_audit_logs
set department_id = 1
WHERE names = 'Henry'

update company_audit_logs 
set salary = (salary * 0.05) + salary
where department_id = 1

update company_audit_logs
set action = 'Successful Login'
where action = 'login'

update company_audit_logs
set salary =
case
when salary < 90000 then salary + 10000
when salary between 90000 and 120000 then salary + 5000
else salary
end 
