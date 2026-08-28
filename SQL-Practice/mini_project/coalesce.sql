-- 🏋️ Exercise 1

-- Let's start very simply.

-- Write a query that returns:

-- employee_name
-- email

-- But if an employee's email is NULL, display:

-- 'No email provided'

-- Exercise 2 — Multiple values

-- Let's make it a little more realistic.

-- Add a phone_number column to company_employees and put phone numbers for some employees while leaving others as NULL.

-- Then write a query that returns:

-- employee_name
-- email
-- phone_number
-- contact_info

-- Where contact_info should show:

-- The employee's email if available
-- Otherwise their phone number
-- Otherwise 'No contact information'

select employee_name,
email,
coalesce(email,'No email provided') as contact_email
from company_employees

select employee_name,
email,
phone_contact as phone_number,
coalesce(
email,phone_contact,'No contact information'
) as contact_info
from company_employees