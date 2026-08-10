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