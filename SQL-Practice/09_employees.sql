CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (first_name,last_name,department,salary,hire_date)
VALUES
('Alice','Johnson','Engineering',75000,'2021-03-15'),
('Brian','Smith','HR',62000,'2020-07-20'),
('Chinwe','Enyidiegwu','IT',85000,'2022-01-10'),
('David','Brown','Finance',92000,'2019-11-05'),
('Emma','Wilson','Marketing',58000,'2023-04-18'),
('Frank','Taylor','Engineering',81000,'2021-09-12'),
('Grace','Thomas','IT',97000,'2020-05-30'),
('Henry','Anderson','Sales',64000,'2022-06-25'),
('Isabella','Moore','HR',71000,'2021-08-14'),
('James','Jackson','Finance',89000,'2018-12-01'),
('Karen','White','Engineering',95000,'2019-10-22'),
('Liam','Harris','IT',78000,'2022-02-28'),
('Mary','Martin','Sales',61000,'2023-01-17'),
('Nathan','Clark','Marketing',69000,'2021-06-08'),
('Olivia','Lewis','Engineering',88000,'2020-03-11');

SELECT *
FROM employees;

-- SELECT table_name
-- FROM information_schema.tables
-- WHERE table_schema = 'public';

-- DROP TABLE employees;

-- ALTER TABLE employeess
-- RENAME TO employees;