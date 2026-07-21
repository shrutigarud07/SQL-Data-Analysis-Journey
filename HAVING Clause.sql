CREATE TABLE Employee (
    EmpID INT,
    Name VARCHAR(30),
    Department VARCHAR(20),
    Salary INT
);

INSERT INTO Employee VALUES
(1,'Rahul','IT',50000),
(2,'Priya','IT',60000),
(3,'Amit','IT',55000),
(4,'Neha','IT',52000),
(5,'Rohan','IT',65000),
(6,'Sneha','IT',58000),
(7,'Pooja','HR',45000),
(8,'Kiran','HR',47000),
(9,'Aakash','Finance',70000),
(10,'Anjali','Finance',68000);

CREATE TABLE Sales (
    SaleID INT,
    Region VARCHAR(20),
    Category VARCHAR(20),
    Amount INT,
    Price INT
);

INSERT INTO Sales VALUES
(101,'North','Electronics',50000,800),
(102,'North','Electronics',60000,900),
(103,'South','Furniture',30000,600),
(104,'South','Furniture',40000,700),
(105,'West','Clothing',15000,400),
(106,'West','Clothing',20000,450);

CREATE TABLE Orders (
    OrderID INT,
    CustomerName VARCHAR(30)
);

INSERT INTO Orders VALUES
(1,'Rahul'),
(2,'Rahul'),
(3,'Rahul'),
(4,'Rahul'),
(5,'Rahul'),
(6,'Rahul'),
(7,'Rahul'),
(8,'Rahul'),
(9,'Rahul'),
(10,'Rahul'),
(11,'Rahul'),
(12,'Priya'),
(13,'Priya'),
(14,'Amit');

-- Departments with more than 5 employees
SELECT Department, COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 5;

-- Regions with sales greater than 100000
SELECT Region, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY Region
HAVING SUM(Amount) > 100000;

-- Categories with average price greater than 500
SELECT Category, AVG(Price) AS AveragePrice
FROM Sales
GROUP BY Category
HAVING AVG(Price) > 500;

-- Customers with more than 10 orders
SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName
HAVING COUNT(*) > 10;

--  Complex HAVING condition
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 50000 AND COUNT(*) >= 2;
