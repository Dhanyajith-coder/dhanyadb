CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Department VARCHAR(30),
    City VARCHAR(30)
);

INSERT INTO Students VALUES
(101, 'Rahul', 20, 'Male', 'CSE', 'Bangalore'),
(102, 'Priya', 21, 'Female', 'ISE', 'Mysore'),
(103, 'Arjun', 22, 'Male', 'ECE', 'Bangalore'),
(104, 'Sneha', 20, 'Female', 'CSE', 'Hubli'),
(105, 'Kiran', 23, 'Male', 'ME', 'Mangalore'),
(106, 'Ananya', 21, 'Female', 'CSE', 'Bangalore'),
(107, 'Rohan', 22, 'Male', 'ISE', 'Belgaum'),
(108, 'Pooja', 20, 'Female', 'ECE', 'Mysore'),
(109, 'Vikas', 24, 'Male', 'ME', 'Hubli'),
(110, 'Aisha', 21, 'Female', 'CSE', 'Bangalore'),
(111, 'Nikhil', 22, 'Male', 'ECE', 'Tumkur'),
(112, 'Divya', 20, 'Female', 'ISE', 'Bangalore'),
(113, 'Manoj', 23, 'Male', 'CSE', 'Mysore'),
(114, 'Kavya', 21, 'Female', 'ME', 'Dharwad'),
(115, 'Sanjay', 22, 'Male', 'CSE', 'Bangalore');


select * from college.students;

select studentname, department from college.students;
select studentname, age , city from college.students;


select distinct department from students;

select distinct city from students;


select * from students 
where department='CSE';

select *from students where age>21;

select * from students where gender ='female';

select * from students where city ='Bangalore';

select * from students where department ='cse' AND city ='bangalore';

select * from students where department in('cse','ise');
select*from students where department='cse' or department='ise';

select studentname from students where not department='me';

select studentname from students where gender='female' and age=21;

select studentname from students where age between 20 and 22;

select studentname from students where studentid between 105 and 112;

select studentname from students where studentname like 'a%';

select studentname from students where studentname like '%a';

select studentname from students where studentname like '%ya%';

select * from students order by studentname;

select Avg(age) from students; 