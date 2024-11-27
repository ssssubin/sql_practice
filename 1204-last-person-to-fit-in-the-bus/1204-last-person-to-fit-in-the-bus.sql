# Write your MySQL query statement below
select q2.person_name 
from (select person_id, sum(weight) over(order by turn asc) as sum_val 
      from Queue) as q1 
      join Queue as q2 
      on q1.person_id = q2.person_id 
      where q1.sum_val <= 1000 
      order by q1.sum_val desc 
      limit 1;