CREATE TABLE Orders (
    OrderID INT,
    CustomerName VARCHAR(30),
    OrderDate DATE
);

INSERT INTO Orders VALUES
(1,'Rahul','2025-07-01'),
(2,'Priya','2025-07-10'),
(3,'Amit','2025-06-20'),
(4,'Sneha','2025-05-15'),
(5,'Rohan','2025-07-18');

-- Current Date
SELECT CURDATE() AS CurrentDate;

-- Current Timestamp
SELECT NOW() AS CurrentTimestamp;

-- Extract Year
SELECT OrderID, CustomerName, YEAR(OrderDate) AS Year
FROM Orders;

--  Extract Month
SELECT OrderID, CustomerName, MONTH(OrderDate) AS Month
FROM Orders;

-- Find Records from Last 30 Days
SELECT *
FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;
