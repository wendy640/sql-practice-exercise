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


-- Group BY clause

-- 🟢 Exercise 1 – Product Category Summary (Easy)

-- The warehouse manager wants to know how many products belong to each category.

-- Requirements

-- Return:

-- category
-- Total number of products

-- Sort the results by the category name (A–Z).

-- Expected columns

-- category	total_products

-- Concepts: COUNT(), GROUP BY, ORDER BY

SELECT category,
       COUNT(*) AS total_products
FROM products
GROUP BY category
ORDER BY category ASC;

-- 🟡 Exercise 2 – Department Salary Report (Medium)

-- HR wants a report showing the total salary paid in each department.

-- Requirements

-- Return:

-- department
-- Total salary expense

-- Sort the report from the department with the highest total salary to the lowest.

-- Expected columns

-- department	total_salary

-- Concepts: SUM(), GROUP BY, ORDER BY DESC

SELECT department,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- 🔴 Exercise 3 – Multiple Column GROUP BY (Challenge)

-- Management wants to know how many customers registered in each city on each registration date.

-- Requirements

-- Return:

-- city
-- created_at
-- Number of customers

-- Group by both city and created_at.

-- Sort by:

-- city (A–Z)
-- created_at (Oldest first)

-- Expected columns

-- city	created_at	total_customers

-- Concepts: COUNT(), GROUP BY (multiple columns), ORDER BY

SELECT city,
       created_at,
       COUNT(*) AS total_customers
FROM customers
GROUP BY city, created_at
ORDER BY city ASC, created_at ASC;

-- 🏆 Bonus Challenge (Optional)

-- After you've solved the three above, try this one without looking at your notes:

-- Generate a report showing:

-- Product category
-- Number of products
-- Total stock quantity
-- Average product price (rounded to 2 decimal places)
-- Cheapest product
-- Most expensive product

-- Sort the report by average price (highest first).

-- This combines almost everything you've learned over the last two days:

-- GROUP BY
-- COUNT()
-- SUM()
-- AVG()
-- ROUND()
-- MIN()
-- MAX()
-- ORDER BY

SELECT category AS Product_category,
COUNT(*) AS Number_of_products,
SUM(stock_quantity) AS Total_stock_quantity,
ROUND(AVG(price),2) AS Average_product_price,
MIN(price) AS Cheapest_product,
MAX(price) AS Most_expensive_product
FROM products
GROUP BY category
ORDER BY Average_product_price DESC

-- 💻 Day 12 Practical SQL Challenges



-- 🟢 Exercise 1 — HAVING (Easy)
-- 🎫 Support Ticket #301

-- The warehouse manager wants to know which product categories contain more than 2 products.

-- Requirements

-- Return:

-- category
-- COUNT(*) AS total_products

-- Only display categories that have more than 2 products.

-- Sort by the number of products (highest first).

SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category
HAVING COUNT(*) > 2
ORDER BY total_products DESC


-- 🟡 Exercise 2 — WHERE vs HAVING (Medium)
-- 🎫 Support Ticket #302

-- Management only wants to analyze Electronics and Furniture products.

-- Generate a report showing:

-- category
-- Average product price

-- Requirements:

-- Only include Electronics and Furniture (WHERE)
-- Only display categories whose average price is greater than ₦100,000 (HAVING)
-- Round the average price to 2 decimal places
-- Sort by average price descending

-- 💡 This exercise is designed to help you understand when to use WHERE versus HAVING.

SELECT category, ROUND(AVG(price), 2) AS Average_product_price
FROM products
WHERE category IN('Electronics','Furniture') 
GROUP BY category
HAVING ROUND(AVG(price), 2) > 100000
ORDER BY Average_product_price DESC


-- 🔴 Exercise 3 — CASE + GROUP BY (Challenge)
-- 🎫 Support Ticket #303

-- The Finance team wants products grouped by price range instead of exact prices.

-- Create these price groups:

-- Budget → price less than ₦20,000
-- Mid-range → price between ₦20,000 and ₦100,000
-- Premium → price above ₦100,000

-- Generate a report showing:

-- Price Range
-- Number of Products
-- Average Price (rounded to 2 decimals)

-- Sort the report from the highest average price to the lowest.

-- 💡 Hint: Use CASE ... END AS price_range and group by the CASE expression.

SELECT 
CASE 
WHEN price < 20000 THEN 'Budget'
WHEN price BETWEEN 20000 AND 100000 THEN 'Mid_Range'
ELSE 'Premium'
END AS Price_Range,

COUNT(*) AS Number_of_Products,
ROUND(AVG(price),2) AS Average_Price
FROM products

GROUP BY 
CASE 
WHEN price < 20000 THEN 'Budget'
WHEN price BETWEEN 20000 AND 100000 THEN 'Mid_Range'
ELSE 'Premium'
END 

ORDER BY Price_Range DESC

-- 🏆 Bonus Challenge ⭐⭐⭐

-- Without looking at your notes, write one query that returns:

-- Product Category
-- Number of Products
-- Average Price
-- Highest Price
-- Lowest Price

-- Requirements:

-- Only include categories where:
-- Average price is greater than ₦50,000
-- AND there are at least 2 products
-- Sort by average price descending.

-- This combines:

-- WHERE
-- GROUP BY
-- HAVING
-- COUNT()
-- AVG()
-- MIN()
-- MAX()
-- ORDER BY
select category as Product_Category, 
count(*) as Number_of_Products,
round(avg(price),0) as Average_Price,
max(price) as Highest_Price,
min(price) as Lowest_Price
from products
group by category
having avg(price) > 50000 and count(*) >=2
order by Average_Price desc