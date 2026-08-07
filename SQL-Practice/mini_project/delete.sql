-- Exercise 1

-- Delete the audit log performed by Bob.

-- ⭐⭐ Exercise 2

-- Delete every record where:

-- action = 'Profile Update'
-- ⭐⭐⭐ Exercise 3

-- Delete Alice's Successful Login only.

-- ⭐⭐⭐⭐ Exercise 4

-- Delete Charlie's record and display the deleted row using:

-- RETURNING *
-- ⭐⭐⭐⭐⭐ Final Challenge

-- Delete every record created today.


delete from company_audit_logs
where names = 'Bob'

delete from company_audit_logs
where action = 'Profile Update'

delete from company_audit_logs
where names  = 'Alice' and action = 'Successful Login'

delete from company_audit_logs
where names = 'Charlie'
returning *

delete from company_audit_logs
where performed_at::date = CURRENT_DATE