CREATE TABLE Employee (
    EmpID INT,
    Name VARCHAR(30),
    Department VARCHAR(20),
    Salary INT,
    Age INT
);

INSERT INTO Employee VALUES
(1,'Rahul','IT',50000,25),
(2,'Priya','HR',45000,28),
(3,'Amit','IT',60000,30),
(4,'Sneha','Finance',55000,27),
(5,'Rohan','IT',70000,25),
(6,'Neha','HR',40000,24);

CREATE TABLE Sales (
    SaleID INT,
    Region VARCHAR(20),
    Category VARCHAR(20),
    Amount INT,
    SaleDate DATE
);

INSERT INTO Sales VALUES
(101,'North','Electronics',50000,'2024-01-10'),
(102,'South','Furniture',30000,'2024-02-15'),
(103,'North','Electronics',20000,'2025-03-18'),
(104,'West','Clothing',15000,'2025-04-12'),
(105,'South','Electronics',25000,'2025-05-20');

CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(30),
    Class VARCHAR(20)
);

INSERT INTO Student VALUES
(1,'Rahul','SE'),
(2,'Priya','SE'),
(3,'Amit','TE'),
(4,'Sneha','BE'),
(5,'Neha','TE');

CREATE TABLE Orders (
    OrderID INT,
    CustomerName VARCHAR(30),
    OrderDate DATE
);

INSERT INTO Orders VALUES
(1,'Rahul','2025-01-10'),
(2,'Priya','2025-01-15'),
(3,'Amit','2025-02-20'),
(4,'Sneha','2025-02-28'),
(5,'Neha','2025-03-12');

SELECT Department, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department;

SELECT Department, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department;

SELECT Region, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Region;

SELECT Department, MAX(Salary) AS HighestSalary
FROM Employee
GROUP BY Department;

SELECT Department, MIN(Salary) AS LowestSalary
FROM Employee
GROUP BY Department;

SELECT Department, Age, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department, Age;

SELECT Category, COUNT(*) AS TotalProducts
FROM Sales
GROUP BY Category;

SELECT Class, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Class;

SELECT MONTH(OrderDate) AS Month, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY MONTH(OrderDate);

SELECT YEAR(SaleDate) AS Year, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate);
