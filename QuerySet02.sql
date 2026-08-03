select studentname from students where city = 'bangalore' and department = 'cse';

select studentname from students where age = 20 or age = 22;

select studentname from students where studentname like '%a%' and city ='mysore'; 

select department ,count(*) from students 
group by department;

select department ,count(*) 
from students group by department
having count(*) > 3;

select Studentname from students
where age >(select  avg(age) from students);

select city , count(*) from students group by city;

select studentname from students where gender ='female' and not city = 'bangalore';

select studentname from students where studentname like 's%' or studentname like '%n';

select department from students 
group by department 
having avg(age)>21;

select studentname from students 
order by age
limit 1;

select studentname from students
order by age desc
limit 1;
