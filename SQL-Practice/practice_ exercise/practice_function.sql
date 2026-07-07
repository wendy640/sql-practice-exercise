-- PART 1 — COUNT()
-- Exercise 1

-- Find the total number of customers.

SELECT COUNT(*) FROM customers

-- Exercise 2

-- Find the total number of employees.

SELECT COUNT(*) FROM customers

-- Exercise 3

-- How many products are in your inventory?

SELECT COUNT(*) FROM products

-- Exercise 4

-- How many products currently have a discount?
-- (Hint: Don't count NULL values.)

SELECT COUNT(discount_percent) FROM products

-- Exercise 5

-- How many unique product categories exist?

SELECT  COUNT(DISTINCT category) FROM products

-- PART 2 — SUM()
-- Exercise 6

-- Find the total value of all employee salaries.

SELECT SUM(salary) FROM employees


-- Exercise 7

-- Find the total stock quantity across all products.

SELECT SUM(stock_quantity) FROM products

-- Exercise 8

-- Find the total value of all inventory.

-- (Price × Stock Quantity)

SELECT SUM(price * stock_quantity) FROM products

-- PART 3 — AVG()
-- Exercise 9

-- Find the average product price.

-- Round it to 2 decimal places.

SELECT ROUND(AVG(price),2) FROM products

-- Exercise 10

-- Find the average employee salary.

SELECT ROUND(AVG(salary),0) FROM employees

-- Exercise 11

-- Find the average discount percentage.

-- Ignore NULL values.

SELECT ROUND(AVG(discount_percent),0) FROM products

-- PART 4 — MIN() & MAX()
-- Exercise 12

-- Find the cheapest product.

SELECT MIN(price) FROM products

-- Exercise 13

-- Find the most expensive product.

SELECT Max(price) FROM products

-- Exercise 14

-- Find the lowest employee salary.

SELECT MIN(salary) FROM employees

-- Exercise 15

-- Find the highest employee salary.

SELECT MAX(salary) FROM employees

-- PART 5 — Multiple Aggregate Functions
-- Exercise 16

-- Generate a business summary showing:

-- Total Products
-- Total Stock
-- Average Price
-- Cheapest Product Price
-- Highest Product Price

SELECT 
COUNT(*) AS Total_Products,
SUM(stock_quantity) AS Total_Stock,
ROUND(AVG(price),0) AS Average_Price,
MIN(price) AS Cheapest_Product_Price,
MAX(price) AS Highest_Product_Price
FROM products


-- Exercise 17

-- Generate an HR summary showing:

-- Number of Employees
-- Total Salary
-- Average Salary
-- Lowest Salary
-- Highest Salary

SELECT 
COUNT(*) AS Number_of_Employees,
SUM(salary) AS Total_Salary,
ROUND(AVG(salary),0) AS Average_Salary,
MIN(salary) AS Lowest_Salary,
MAX(salary) AS Highest_Salary
FROM employees


-- Exercise 18

-- Generate a customer summary showing:

-- Total Customers
-- Number of Cities
-- 🏢 Real Application Support Tickets
-- Ticket #201

-- The Finance team wants to know the total monthly salary expense.

-- Ticket #202

-- The Warehouse manager wants the total number of items currently in stock.

-- Ticket #203

-- Management wants to know the average selling price of products.

-- Ticket #204

-- The Sales manager asks:

-- "What's the cheapest and most expensive product?"

-- Ticket #205

-- HR wants to know how many employees work in the company.

-- Ticket #206

-- Management wants one report showing:

-- Number of products
-- Total stock
-- Total inventory value
-- Average price
-- Highest price
-- Lowest price
-- Ticket #207 (Boss Challenge ⭐⭐⭐)

-- Create one query returning:

-- Total number of products
-- Total stock quantity
-- Total inventory value (price × stock_quantity)
-- Average product price (rounded to 2 decimals)
-- Highest price
-- Lowest price
-- 🏆 Bonus Challenge (No Hints)

-- Write one query that returns:

-- Total Customers
-- Total Employees
-- Total Products

-- (Hint: This one is a little tricky with your current tables—you'll need separate queries or think about how to combine results later when you learn more advanced SQL.)