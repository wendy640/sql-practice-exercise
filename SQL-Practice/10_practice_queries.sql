-- PART 1 — Aliases (AS)
-- Exercise 1
-- Display every customer's
-- first_name
-- last_name
-- city
-- Rename them as
-- First Name
-- Last Name
-- City

SELECT *
FROM products;
SELECT first_name AS "First Name",last_name AS "Last Name",city AS "City"
FROM customers ;

-- Exercise 2

-- Display every product

-- Rename

-- product_name → Product
-- price → Price (₦)
-- stock_quantity → Stock

SELECT product_name AS "Product", price AS "Price (₦)", stock_quantity AS "Stock"
FROM products;

PART 2 — Expressions
-- Exercise 3

-- Your company wants to see the selling price after adding 7.5% VAT.

-- Display

-- product_name
-- price
-- price after VAT

-- Call the new column

-- price_with_vat

SELECT product_name,price,(price * 0.075) + price AS "price_with_vat"
FROM products;

-- Exercise 4

-- Management wants to know what every product costs after a 10% increase.

-- Display

-- product_name
-- current price
-- increased price

SELECT product_name,price,(price * 0.1) + price AS "increased price"
FROM products;

-- PART 3 — DISTINCT
-- Exercise 5

-- Show all unique cities customers come from.

SELECT DISTINCT city
FROM customers;

-- Exercise 6

-- Show all unique employee departments.
SELECT DISTINCT department
FROM employees;

-- PART 4 — WHERE
-- Exercise 7

-- Show customers who live in Lagos.

SELECT *
FROM customers
WHERE city='Lagos';

-- Exercise 8

-- Show products costing more than ₦100,000.

SELECT * 
FROM products 
WHERE price > 100000

-- Exercise 9

-- Show employees earning less than ₦70,000.

SELECT * 
FROM employees
WHERE salary < 70000;

-- PART 5 — Comparison Operators
-- Exercise 10

-- Find products costing exactly ₦12,000.

SELECT * 
FROM products 
WHERE price = 12000

-- Exercise 11

-- Find employees earning greater than or equal to ₦90,000.

SELECT * 
FROM employees
WHERE salary >= 90000;

-- Exercise 12

-- Find customers who are NOT from Lagos.

-- (Use != or <>.)

SELECT *
FROM customers
WHERE city != 'Lagos';

-- PART 6 — AND
-- Exercise 13

-- Show Electronics products costing above ₦100,000.

SELECT *
FROM products 
WHERE category = 'Electronics' AND price > 100000 

-- Exercise 14

-- Find IT employees earning above ₦80,000.

SELECT * 
FROM employees
WHERE department = 'IT'AND salary > 80000;

-- Exercise 15

-- Show Furniture products with stock less than 10.

SELECT *
FROM products 
WHERE category = 'Furniture' AND stock_quantity < 10

-- PART 7 — OR
-- Exercise 16

-- Find customers from

-- Lagos
-- Abuja

SELECT * 
FROM customers
WHERE city = 'Lagos' OR city = 'Abuja';

-- Exercise 17

-- Find employees in

-- HR
-- Finance

SELECT * 
FROM employees
WHERE department = 'HR' OR department = 'Finance';


-- Exercise 18

-- Find products that are either

-- Electronics

-- OR

-- Furniture

SELECT *
FROM products 
WHERE  category = 'Electronics' OR category = 'Furniture' 


-- PART 8 — NOT
-- Exercise 19

-- Show every employee NOT in Engineering.

SELECT * 
FROM employees
WHERE department != 'Engineering';

-- Exercise 20

-- Show every customer NOT from Abuja.

SELECT * 
FROM customers
WHERE city != 'Abuja';

-- PART 9 — BETWEEN
-- Exercise 21

-- Show products priced between

-- ₦10,000

-- and

-- ₦100,000.

SELECT * 
FROM products 
WHERE price 
BETWEEN 10000 AND 100000

-- Exercise 22

-- Find employees earning between

-- ₦70,000

-- and

-- ₦90,000.

SELECT * 
FROM employees
WHERE salary 
BETWEEN 70000 AND 90000;

-- PART 10 — IN
-- Exercise 23

-- Find customers whose IDs are

-- 2
-- 4
-- 8
-- 10

SELECT * 
FROM customers
WHERE customer_id
IN (2,4,6,8) 

-- Exercise 24

-- Find employees in

-- IT
-- Engineering
-- Finance

-- using IN.

SELECT *
FROM employees
WHERE department
IN ('IT','Engineering','Finance')

-- PART 11 — LIKE
-- Exercise 25

-- Find customers whose first name starts with

-- M

SELECT * 
FROM customers
WHERE first_name 
LIKE 'M%'

-- Exercise 26

-- Find customers whose last name ends with

-- n

SELECT * 
FROM customers
WHERE last_name 
LIKE '%n'

-- Exercise 27

-- Find products containing

-- Desk

SELECT product_name
FROM products
WHERE product_name 
LIKE '%Desk%'

-- PART 12 — ILIKE
-- Exercise 28

-- Search for every employee whose first name contains

-- gr


SELECT *
FROM employees
WHERE first_name
ILIKE '%gr%'

-- regardless of capitalization.

-- Exercise 29

-- Search products containing

-- lap

-- using ILIKE.

SELECT *
FROM products
WHERE product_name
ILIKE '%lap%'

-- PART 13 — NULL
-- Exercise 30

-- Show every product that has

-- no discount.
SELECT *
FROM products
WHERE discount_percent IS NULL

-- Exercise 31

-- Show products that have discounts.

SELECT *
FROM products
WHERE discount_percent IS NOT NULL

-- PART 14 — ORDER BY
-- Exercise 32

-- Sort products

-- from cheapest to most expensive.

SELECT *
FROM products
ORDER BY price ASC 

-- Exercise 33

-- Sort employees

-- from highest salary to lowest.


SELECT * 
FROM employees
ORDER BY salary DESC


-- Exercise 34

-- Sort customers alphabetically by last name.
SELECT *
FROM customers
ORDER BY last_name ASC


-- PART 15 — Multiple ORDER BY
-- Exercise 35

-- Sort products by

-- Category (A-Z)
-- Price (highest first)

SELECT *
FROM products 
ORDER BY category ASC  , price DESC


-- Exercise 36

-- Sort employees by

-- Department
-- Salary (highest first)

SELECT *
FROM employees
ORDER BY department, salary DESC;

-- PART 16 — LIMIT
-- Exercise 37

-- Show the

-- 3 cheapest products.


SELECT *
FROM products
ORDER BY price ASC
LIMIT 3


-- Exercise 38

-- Show the

-- 5 newest customers.

-- (Hint: use created_at.)

SELECT *
FROM customers
ORDER BY created_at ASC
LIMIT 5

-- PART 17 — OFFSET
-- Exercise 39

-- Display customers

-- 6–10.

SELECT *
FROM customers
LIMIT 5
OFFSET 5
-- Exercise 40

-- Display employees

-- 6–10.
SELECT *
FROM employees
LIMIT 5
OFFSET 5

-- PART 18 — FETCH FIRST
-- Exercise 41

-- Return the

-- top 5 highest-paid employees.

-- Use

-- FETCH FIRST 5 ROWS ONLY;

SELECT *
FROM customers
ORDER BY customer_id
LIMIT 5
OFFSET 5

-- PART 19 — NULLS LAST ⭐
-- Exercise 42

-- Exactly like your lesson today.

-- Display

-- product_name
-- category
-- discount_percent

-- Requirements

-- smallest discount first
-- NULL values last
-- if discounts are equal, sort by product_id

SELECT
    product_name,
    category,
    discount_percent
FROM products
ORDER BY discount_percent ASC NULLS LAST, product_id ASC;


-- Ticket #101

-- The warehouse manager wants every Electronics product with fewer than 20 items in stock.

-- Return

-- product_name
-- price
-- stock_quantity

SELECT 
product_name,
price,
stock_quantity
FROM products
WHERE category = 'Electronics' AND stock_quantity < 20

-- Ticket #102

-- Finance wants to know every employee earning more than ₦85,000.

-- Sort highest salary first.

SELECT * 
FROM employees
WHERE salary > 85000

-- Ticket #103

-- Marketing wants customers from Lagos who registered after

-- 2024-05-01

SELECT * 
FROM customers 
WHERE city = 'Lagos' AND created_at > '2024-05-01'

-- Ticket #104

-- Show every product with a discount greater than 10%.

SELECT *
FROM products
WHERE discount_percent > 10

-- Ticket #105

-- Customer support wants everyone whose email contains

-- @email.com

SELECT *
FROM customers 
WHERE email
LIKE '%@email.com%'

-- Ticket #106

-- The HR manager needs all Engineering and IT staff earning above ₦80,000.
SELECT *
FROM employees
WHERE  department IN('Engineering','IT') AND salary > 80000


-- Ticket #107

-- Show every product costing more than ₦20,000 that has no discount.

SELECT * 
FROM products
WHERE price > 20000 AND discount_percent IS NULL

-- Ticket #108

-- Display the first five employees hired earliest.

-- Ticket #109

-- Find customers whose first name contains the letter

-- a

-- (case insensitive).

-- Ticket #110 (Boss Challenge ⭐⭐⭐)

-- Your manager says:

-- "Generate a report showing Electronics and Furniture products that cost between ₦20,000 and ₦900,000. Only include products with discounts. Sort by discount from highest to lowest, then by price from lowest to highest. Return only the first five products."

-- Return

-- product_name
-- category
-- price
-- discount_percent
-- 🏆 Bonus Challenge (Combines Everything)

-- Without looking at your notes, write one query that satisfies all these conditions:

-- Display:
-- product_name
-- category
-- price
-- discount_percent AS discount
-- Only products in Electronics or Furniture
-- Price between ₦10,000 and ₦900,000
-- Discount is NOT NULL
-- Product name contains the letter "o" (case insensitive)
-- Sort by:
-- discount_percent descending
-- price ascending
-- Return only 3 rows