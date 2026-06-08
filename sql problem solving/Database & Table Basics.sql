-- Create Database
CREATE DATABASE DataAnalysisDB;

-- Use Database
USE DataAnalysisDB;

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE
);

-- Insert One Customer
INSERT INTO Customers
VALUES (1, 'Amit', 'Pune', 22);

-- Insert More Customers
INSERT INTO Customers
VALUES
(2, 'Priya', 'Mumbai', 25),
(3, 'Rahul', 'Delhi', 28),
(4, 'Sneha', 'Pune', 24),
(5, 'Arjun', 'Bangalore', 30);

-- Display All Customers
SELECT * FROM Customers;

-- Display Only Name and City
SELECT customer_name, city
FROM Customers;

-- Using Aliases
SELECT customer_name AS Name,
       city AS City_Name
FROM Customers;

-- Update Rahul's City
UPDATE Customers
SET city = 'Hyderabad'
WHERE customer_name = 'Rahul';

-- Check Updated Data
SELECT * FROM Customers;

-- Delete Customer with ID 5
DELETE FROM Customers
WHERE customer_id = 5;

-- Check Remaining Data
SELECT * FROM Customers;

-- Show Unique Cities
SELECT DISTINCT city
FROM Customers;

-- Show First 3 Records
SELECT *
FROM Customers
LIMIT 3;

-- Sort Customers by Age (Ascending)
SELECT *
FROM Customers
ORDER BY age;

-- Sort Customers by Age (Descending)
SELECT *
FROM Customers
ORDER BY age DESC;

-- Delete Orders Table
DROP TABLE Orders;

