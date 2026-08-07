-- Create Database
CREATE DATABASE CollegeDB;
USE CollegeDB;

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

---------------------------------------------------
-- Insert values into Departments
---------------------------------------------------
INSERT INTO Departments VALUES
(101, 'CSE'),
(102, 'ECE'),
(103, 'EEE'),
(105, 'MECH');

---------------------------------------------------
-- Insert values into Students
---------------------------------------------------
INSERT INTO Students VALUES
(1, 'Dhanya', 101),
(2, 'Rahul', 102),
(3, 'Ananya', 101),
(4, 'Kiran', 103),
(5, 'Arjun', 104);

---------------------------------------------------
-- Display Tables
---------------------------------------------------
SELECT * FROM Students;
SELECT * FROM Departments;

select s.Name , d.Department_Name 
from students s
left join departments d
on s.Department_ID=d.Department_ID;

select s.Name , d.Department_Name 
from students s
right join departments d
on s.Department_ID=d.Department_ID;

select s.Name , d.Department_Name 
from departments d
left join students s
on s.Department_ID=d.Department_ID;

select s.Name  
from students s
inner join departments d
on s.Department_ID=d.Department_ID
where d.Department_Name = 'cse';

select s.Name  
from students s
inner join departments d
on s.Department_ID=d.Department_ID
where d.Department_Name in('ece' ,'eee');
