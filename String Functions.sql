CREATE TABLE Employee (
    EmpID INT,
    Name VARCHAR(30),
    Department VARCHAR(20)
);

INSERT INTO Employee VALUES
(1,'Rahul','IT'),
(2,'Priya','HR'),
(3,'Amit','Finance'),
(4,'Sneha','Marketing'),
(5,'Rohan','Sales');

-- UPPER()
SELECT Name, UPPER(Name) AS UpperCaseName
FROM Employee;

-- LOWER()
SELECT Name, LOWER(Name) AS LowerCaseName
FROM Employee;

--  LENGTH()
SELECT Name, LENGTH(Name) AS NameLength
FROM Employee;

-- CONCAT()
SELECT CONCAT(Name, ' - ', Department) AS EmployeeDetails
FROM Employee;

-- SUBSTRING()
SELECT Name, SUBSTRING(Name, 1, 3) AS FirstThreeLetters
FROM Employee;
