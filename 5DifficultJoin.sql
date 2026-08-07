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
-- 1
select d.Department_Name , count(*)
from departments d
inner join students s
on d.Department_ID=s.Department_ID
group by d.department_name
having count(*)>1;
-- 2
select d.Department_Name , count(Student_ID)
from departments d
left join students s
on d.Department_ID=s.Department_ID
group by Department_Name;
-- 3
select s.Name 
from students s  
left join departments d
on d.Department_ID=s.Department_ID
where d.department_name is null;
-- 4
select d.department_name, count(s.Student_ID)
from departments d
inner join students s
on d.Department_ID=s.Department_ID
group by d.department_name
order by count(s.Student_ID) desc  
limit 1;
-- 5
select s.Name , d.department_name 
from students s
inner join departments d
on s.Department_ID=d.Department_ID
where d.department_name like 'e%';