select * from employees;
select name , salary from employees;

select name from employees 
where department ='IT';

select name from employees 
where salary > 40000;

select name from employees 
where name like 'S%';

select name from employees
where salary between 30000 and 45000;

select name from employees
where department != 'HR';

Select name from employees
order by salary  desc;

select  name from employees 
limit 2 offset 2;

select name from employees
order by salary asc 
limit 3;

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) 
FROM employees
WHERE department = 'IT';

SELECT SUM(salary) FROM employees;

SELECT  department, name
FROM employees
GROUP BY department,name;

SELECT department, SUM(salary) as total
FROM employees
GROUP BY department
having sum(salary)>80000;