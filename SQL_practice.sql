CREATE DATABASE sql_practice;
USE sql_practice;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE
);

INSERT INTO employees VALUES
(1, 'Ravi', 23, 'IT', 30000, 'Bangalore', '2023-01-15'),
(2, 'Priya', 25, 'HR', 45000, 'Mysore', '2022-06-10'),
(3, 'Arun', 28, 'IT', 50000, 'Bangalore', '2021-03-20'),
(4, 'Sneha', 24, 'Finance', 35000, 'Chennai', '2023-08-05'),
(5, 'Kiran', 26, 'HR', 40000, 'Mysore', '2022-11-12'),
(6, 'Ananya', 29, 'IT', 60000, 'Hyderabad', '2020-04-18'),
(7, 'Vikram', 31, 'Finance', 55000, 'Bangalore', '2019-09-25'),
(8, 'Meera', 22, 'Marketing', 28000, 'Chennai', '2024-01-08'),
(9, 'Rahul', 27, 'IT', 48000, 'Pune', '2021-12-01'),
(10, 'Divya', 30, 'Marketing', 42000, 'Hyderabad', '2020-07-14'),
(11, 'Sanjay', 25, 'Sales', 32000, 'Bangalore', '2023-05-22'),
(12, 'Neha', 28, 'Sales', 38000, 'Mysore', '2022-02-16'),
(13, 'Amit', 32, 'Finance', 65000, 'Pune', '2018-10-30'),
(14, 'Pooja', 23, 'HR', 36000, 'Chennai', '2023-11-19'),
(15, 'Karthik', 27, 'IT', 52000, 'Hyderabad', '2021-06-11');