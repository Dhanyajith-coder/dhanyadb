
USE ClgDB;

---------------------------------------------------
-- Create Departments Table (Parent Table)
---------------------------------------------------
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

---------------------------------------------------
-- Create Students Table (Child Table)
---------------------------------------------------
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department_ID INT,
    FOREIGN KEY (Department_ID)
        REFERENCES Departments(Department_ID)
);

---------------------------------------------------
-- Insert values into Departments first
---------------------------------------------------
INSERT INTO Departments VALUES
(101, 'CSE'),
(102, 'ECE'),
(103, 'EEE'),
(104, 'AI'),
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
-- View the tables
---------------------------------------------------
SELECT * FROM Departments;
SELECT * FROM Students;