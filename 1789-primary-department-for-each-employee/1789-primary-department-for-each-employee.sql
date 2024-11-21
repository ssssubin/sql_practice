# Write your MySQL query statement below
select a.employee_id, b.department_id 
from (select employee_id, if(count(employee_id)=1, "Y", "N") as result from employee group by employee_id) as a 
join employee as b 
on a.employee_id = b.employee_id and (a.result = "Y" or b.primary_flag = "Y");