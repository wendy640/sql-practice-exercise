-- Create a table called company_audit_log:

-- log_id
-- action
-- performed_by
-- performed_at

-- Then insert these records:

-- Action	Performed By
-- Login	Alice
-- Password Reset	Bob
-- Profile Update	Charlie

-- Assume performed_at has a default timestamp.

CREATE TABLE company_audit_log (
id_log serial PRIMARY KEY,
	action VARCHAR(100),
performed_by VARCHAR(100),
performed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO company_audit_log (action,performed_by,performed_at)
VALUES('login','Alice', default),
('Password Reset','Bob',default),
('Profile Update','Charlie',default)
select *
from company_audit_log
