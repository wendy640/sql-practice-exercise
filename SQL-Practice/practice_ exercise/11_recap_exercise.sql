-- Exercise 1 — SELECT & Aliases

-- The manager wants a simple product report.

-- Display:

-- Product Name
-- Category
-- Price

-- Rename the columns to:

-- Product
-- Category
-- Selling Price

-- Sort by product name alphabetically.
select 
product_name as Product,category as Category, price as Selling_Price
from products
order by Product_name asc
-- Exercise 2 — Expressions

-- The finance team wants to estimate the selling price after adding 7.5% VAT.

-- Display:

-- product_name
-- price
-- price_with_vat

-- Round the VAT price to 2 decimal places.
select product_name,
price,
discount_percent, ROUND(
        (price - (price * discount_percent / 100)) * 1.075,
        2
    ) AS final_price
from products
-- Exercise 3 — DISTINCT

-- How many different cities do your customers come from?

-- Return only the city names once.

-- Sort alphabetically.
select distinct city from customers order by city asc
-- Exercise 4 — WHERE

-- Display all Electronics products that cost more than ₦20,000.

-- Return:

-- product_name
-- price
-- category

-- Sort by price descending.
select product_name,price,category 
from products 
where category = 'Electronics' and price > 20000 
order by price desc
-- Exercise 5 — BETWEEN

-- The warehouse manager wants products priced between ₦10,000 and ₦200,000.

-- Return:

-- product_name
-- price

-- Sort from cheapest to most expensive.
select product_name,price 
from products 
where price between 10000 and 200000 
order by price asc
-- Exercise 6 — IN

-- Display customers who live in:

-- Lagos
-- Abuja
-- Enugu

-- Return:

-- first_name
-- last_name
-- city

-- Sort by city.
select first_name,last_name,city
from customers
where city
in('Lagos','Abuja','Enugu')
order by city asc
-- Exercise 7 — LIKE & ILIKE

-- Find every product whose name contains the letter "o", regardless of uppercase or lowercase.

-- Return:

-- product_name

-- Sort alphabetically.
select product_name
from products
where product_name ilike '%o%'
order by product_name asc
-- Exercise 8 — IS NULL

-- Some products don't have discounts.

-- Display:

-- product_name
-- category
-- discount_percent

-- Only show products with no discount.

-- Exercise 9 — ORDER BY + NULLS LAST

-- Display:

-- product_name
-- category
-- discount_percent

-- Requirements:

-- Lowest discount first
-- NULL values last
-- If discounts are equal, sort by product name
-- Exercise 10 — LIMIT & OFFSET

-- Display the first 5 customers ordered by the date they joined.

-- Return:

-- first_name
-- last_name
-- created_at
-- Exercise 11 — COUNT()

-- How many products are currently in the database?

-- Return the answer as:

-- total_products
-- Exercise 12 — COUNT(DISTINCT)

-- How many unique product categories exist?

-- Return:

-- total_categories
-- Exercise 13 — SUM()

-- The warehouse manager wants to know the total inventory available.

-- Return:

-- total_stock
-- Exercise 14 — AVG()

-- What is the average product price?

-- Round the result to 2 decimal places.

-- Exercise 15 — MIN() & MAX()

-- Return:

-- Cheapest product price
-- Most expensive product price
-- Exercise 16 — Multiple Aggregate Functions

-- Generate a company inventory summary.

-- Return:

-- Total Products
-- Total Stock
-- Average Price
-- Cheapest Price
-- Highest Price
-- Exercise 17 — GROUP BY

-- For each product category, display:

-- Category
-- Number of Products

-- Sort by number of products (highest first).

-- Exercise 18 — GROUP BY Multiple Columns

-- For each city and registration date, display:

-- City
-- Created Date
-- Number of Customers

-- Sort by:

-- City
-- Date
-- Exercise 19 — HAVING

-- Management only wants categories that contain at least 2 products.

-- Return:

-- Category
-- Number of Products

-- Sort by number of products descending.

-- Exercise 20 — WHERE + HAVING

-- Generate a report showing:

-- Category
-- Average Price

-- Requirements:

-- Only Electronics and Furniture
-- Average price greater than ₦100,000

-- Round to two decimal places.

-- Exercise 21 — CASE

-- Create salary bands.

-- Display:

-- Salary Band
-- Number of Employees

-- Bands:

-- Below ₦70,000 → Low
-- ₦70,000–₦90,000 → Medium
-- Above ₦90,000 → High

-- Sort by employee count descending.

-- Exercise 22 — CASE + Aggregates

-- Create stock levels.

-- Display:

-- Stock Level
-- Number of Products
-- Total Stock

-- Rules:

-- Below 15 → Low Stock
-- 15–50 → Medium Stock
-- Above 50 → High Stock
-- 🏆 Final Boss Challenge

-- Without looking at your notes...

-- Generate a report showing:

-- Category
-- Number of Products
-- Average Price
-- Highest Price
-- Lowest Price

-- Requirements:

-- Only categories with at least 2 products
-- Average price greater than ₦50,000
-- Sort by average price descending

-- This challenge combines:

-- SELECT
-- Aliases
-- WHERE
-- GROUP BY
-- HAVING
-- COUNT
-- AVG
-- MIN
-- MAX
-- ROUND
-- ORDER BY