-- Create Database
CREATE DATABASE Clgdb2;
USE Clgdb2;

---------------------------------------------------
-- Create Departments Table
---------------------------------------------------
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

---------------------------------------------------
-- Create Students Table
---------------------------------------------------
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department_ID INT
);


INSERT INTO Departments VALUES
(101, 'CSE'),
(102, 'ECE'),
(103, 'EEE'),
(105, 'MECH');

INSERT INTO Students VALUES
(1, 'Dhanya', 101),
(2, 'Rahul', 102),
(3, 'Ananya', 101),
(4, 'Kiran', 103),
(5, 'Arjun', 104);


SELECT * FROM Students;
SELECT * FROM Departments;