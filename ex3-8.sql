select 
count(employee_id) as number_employee

from employees
where extract(month from joining_date) between 1 and 7 
and extract(year from joining_date) = 2022;
