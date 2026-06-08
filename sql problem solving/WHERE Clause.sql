CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 55000, 'Pune'),
(2, 'Priya', 'HR', 45000, 'Mumbai'),
(3, 'Amit', 'Finance', 70000, 'Delhi'),
(4, 'Sneha', 'IT', 35000, 'Pune'),
(5, 'Rohan', 'Marketing', 25000, 'Nagpur'),
(6, 'Neha', 'HR', 60000, 'Pune'),
(7, 'Vikas', 'Finance', 40000, 'Mumbai');

SELECT * FROM employees
WHERE salary > 50000;

SELECT * FROM employees
WHERE department = 'IT';

SELECT * FROM employees
WHERE city = 'Pune';

SELECT * FROM employees
WHERE city != 'Pune';

SELECT * FROM employees
WHERE salary > 60000;

SELECT * FROM employees
WHERE salary < 30000;

SELECT * FROM employees
WHERE salary >= 50000;

SELECT * FROM employees
WHERE salary <= 40000;

SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 60000;

SELECT * FROM employees
WHERE department IN ('IT', 'HR', 'Finance');

