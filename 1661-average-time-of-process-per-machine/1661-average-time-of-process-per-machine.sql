# Write your MySQL query statement below
select machine_id, round(avg(time), 3) as processing_time 
from (select a1.machine_id as machine_id, (a2.timestamp - a1.timestamp) as time 
      from Activity as a1 
      join Activity as a2 
      on a1.machine_id = a2.machine_id and a1.process_id = a2.process_id and a1.activity_type='start' and a2.activity_type='end') as result 
group by machine_id;