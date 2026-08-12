-- Exercise 1 — Basic ROLLBACK

-- Without looking at the solution, write a transaction that:

-- Starts a transaction
-- Increases Alice's salary by 10%
-- Checks Alice's salary
-- Rolls the change back
-- Checks Alice's salary again

-- Now let's see the opposite.

-- Using the same transaction_employees table:

-- Change Alice's department from 1 to 2, check the result, and permanently save the change using COMMIT.


-- ⭐ Exercise 3 — Multiple Changes in ONE Transaction

-- Now let's make it a little more realistic.

-- Using transaction_employees, within one transaction:

-- Increase Bob's salary by 5%
-- Change Bob's department_id to 3
-- Check Bob's record
-- ROLLBACK everything
-- Important

-- Both changes must happen inside the same transaction.

-- After the rollback, Bob should be back to:

BEGIN;

UPDATE transaction_employees
SET salary = salary * 1.10
WHERE employee_name = 'Alice';

SELECT *
FROM transaction_employees
ORDER BY employee_id;

ROLLBACK;

SELECT *
FROM transaction_employees
ORDER BY employee_id;

begin 

update transaction_employees
set department_id = 2
where employee_name = 'Alice';

SELECT *
FROM transaction_employees
ORDER BY employee_id;

COMMIT;

SELECT *
FROM transaction_employees
ORDER BY employee_id;

BEGIN;

UPDATE transaction_employees
SET salary = salary * 1.05,
department_id = 3
where employee_name = 'Bob';

SELECT *
FROM transaction_employees
ORDER BY employee_id;

ROLLBACK;

SELECT *
FROM transaction_employees
ORDER BY employee_id;

BEGIN;

UPDATE transaction_employees
SET salary = salary * 1.10
where employee_name = 'Diana';

SELECT *
FROM transaction_employees
ORDER BY employee_id;

SAVEPOINT diana_salary;

UPDATE transaction_employees
SET department_id = 1
where employee_name = 'Diana';

SELECT *
FROM transaction_employees
ORDER BY employee_id;

ROLLBACK TO SAVEPOINT diana_salary;

SELECT *
FROM transaction_employees
ORDER BY employee_id;

COMMIT;
