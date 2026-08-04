select*from employee_demographics;

select * from employee_salary;

select * from 
employee_salary e
inner join parks_departments s
     on e.dept_id=s.department_id
;
select * from parks_departments;