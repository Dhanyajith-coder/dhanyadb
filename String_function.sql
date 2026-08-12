-- string function 

select length('ss');

select first_name, length (first_name)  
from employee_demographics
order by 2 desc;

select upper('sky');
select lower('SKY');

SELECT rTRIM('                       sky                        ') as timmy;

select first_name , left(first_name, 4) as a , birth_date,
substring(birth_date, 6,2) as birth_month
from employee_demographics;

select first_name, replace(first_name , 'a' ,'z')
from employee_demographics;

select locate('a' , 'Dhanya');




