# Write your MySQL query statement below
select distinct(l4.num) as ConsecutiveNums 
from (select l1.id as id1, l1.num as num1, l2.id as id2, l2.num as num2
 from logs as l1 
      join logs as l2 
      on l1.num = l2.num and l1.id = l2.id-1) as l3 
 join logs as l4 
 on l3.num2 = l4.num and l3.id2 = l4.id-1;