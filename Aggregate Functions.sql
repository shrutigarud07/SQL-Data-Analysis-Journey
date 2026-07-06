-- Create Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create Employee Table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Age INT
);

-- Insert Data
INSERT INTO Employee (EmpID, Name, Department, Salary, Age) VALUES
(1, 'Rahul', 'IT', 50000, 25),
(2, 'Priya', 'HR', 45000, 28),
(3, 'Amit', 'IT', 60000, 30),
(4, 'Sneha', 'Finance', 55000, 27),
(5, 'Rohan', 'IT', 70000, 32),
(6, 'Neha', 'HR', 40000, 24);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);

-- Insert Data
INSERT INTO Orders (OrderID, CustomerID, Product, Quantity, Price) VALUES
(101, 1, 'Laptop', 2, 50000),
(102, 2, 'Mouse', 5, 500),
(103, 3, 'Keyboard', 3, 1500),
(104, 1, 'Monitor', 1, 12000),
(105, 4, 'Printer', 2, 8000);

-- 36. COUNT(*)
SELECT COUNT(*) AS TotalEmployees
FROM Employee;

-- 37. COUNT(column)
SELECT COUNT(Salary) AS EmployeesWithSalary
FROM Employee;

-- 38. SUM()
SELECT SUM(Salary) AS TotalSalary
FROM Employee;

-- 39. AVG()
SELECT AVG(Salary) AS AverageSalary
FROM Employee;

-- 40. MIN()
SELECT MIN(Salary) AS LowestSalary
FROM Employee;

-- 41. MAX()
SELECT MAX(Salary) AS HighestSalary
FROM Employee;

-- 42. Total Sales
SELECT SUM(Quantity * Price) AS TotalSales
FROM Orders;

-- 43. Average Salary of IT Department
SELECT AVG(Salary) AS AverageITSalary
FROM Employee
WHERE Department = 'IT';

-- 44. Employee(s) with Highest Salary
SELECT Name, Salary
FROM Employee
WHERE Salary = (SELECT MAX(Salary) FROM Employee);

-- 45. Employee(s) with Lowest Salary
SELECT Name, Salary
FROM Employee
WHERE Salary = (SELECT MIN(Salary) FROM Employee);
