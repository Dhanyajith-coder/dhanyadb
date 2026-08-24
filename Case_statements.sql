select first_name, last_name, age , case
when age <=30 then 'young' 
when age between 31 and 50 then 'old'
else 'very old'
end Result
from employee_demographics; 

-- pay increse and bonus
-- <50000 = 5%
-- >50000 =7%
-- Finance =10%

select employee_id ,first_name ,last_name , occupation , salary,
case 
when salary <50000 then salary +(salary * 0.05)
when salary >50000 then salary +(salary * 0.07)
when occupation = 'Finance' then salary +(salary * 0.1)
end Bonus
from employee_salary; 








