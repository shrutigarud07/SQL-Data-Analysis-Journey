CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    City VARCHAR(30)
);

INSERT INTO Employees VALUES
(1, 'Rahul', 'Sales', 60000, 'Pune'),
(2, 'Priya', 'HR', 45000, 'Mumbai'),
(3, 'Amit', 'IT', 70000, 'Pune'),
(4, 'Sneha', 'Sales', 48000, 'Nashik'),
(5, 'Rohan', 'IT', 55000, 'Mumbai'),
(6, 'Neha', 'HR', 52000, 'Pune'),
(7, 'Karan', 'Sales', 65000, 'Mumbai');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price INT
);

INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Mobile', 'Mobile', 25000),
(103, 'Headphones', 'Electronics', 3000),
(104, 'Book', 'Education', 500),
(105, 'Tablet', 'Mobile', 20000);

--  Use AND
SELECT * FROM Employees
WHERE Department = 'Sales' AND Salary > 50000;

--  Use OR
SELECT * FROM Employees
WHERE Department = 'Sales' OR Department = 'HR';

--  Use NOT
SELECT * FROM Employees
WHERE NOT Department = 'Sales';

--  Combine AND + OR
SELECT * FROM Employees
WHERE (Department = 'Sales' AND Salary > 50000)
OR Department = 'HR';

--  Filter by Multiple Conditions
SELECT * FROM Employees
WHERE City = 'Pune'
AND Department = 'IT'
AND Salary > 40000;

--  Employees in Sales with Salary > 50000
SELECT * FROM Employees
WHERE Department = 'Sales'
AND Salary > 50000;

--  Products in Multiple Categories
SELECT * FROM Products
WHERE Category = 'Electronics'
OR Category = 'Mobile';

--  Exclude Departments
SELECT * FROM Employees
WHERE Department <> 'Sales';

--  Find Records Not Matching Criteria
SELECT * FROM Employees
WHERE Salary <= 50000;

--  Complex Filtering
SELECT * FROM Employees
WHERE (Department = 'IT' OR Department = 'Sales')
AND Salary > 40000
AND City <> 'Mumbai';