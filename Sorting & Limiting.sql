
-- Use Database
USE CompanyDB;

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

-- Insert Data
INSERT INTO Employees VALUES
(1, 'Amit', 'IT', 50000),
(2, 'Priya', 'HR', 45000),
(3, 'Rahul', 'IT', 60000),
(4, 'Sneha', 'Finance', 55000),
(5, 'Rohan', 'HR', 40000),
(6, 'Anjali', 'IT', 70000),
(7, 'Vikas', 'Finance', 48000),
(8, 'Neha', 'HR', 52000),
(9, 'Karan', 'IT', 65000),
(10, 'Pooja', 'Finance', 58000);

--  Sort Ascending
SELECT * FROM Employees
ORDER BY Salary ASC;

--  Sort Descending
SELECT * FROM Employees
ORDER BY Salary DESC;

--  Sort by Multiple Columns
SELECT * FROM Employees
ORDER BY Department ASC, Salary DESC;

--  Top 5 Highest Salaries
SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 5;

--  Lowest 10 Salaries
SELECT * FROM Employees
ORDER BY Salary ASC
LIMIT 10;

