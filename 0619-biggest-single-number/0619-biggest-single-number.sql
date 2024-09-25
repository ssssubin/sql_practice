# Write your MySQL query statement below
SELECT nullif(
    (select num from mynumbers group by num having count(num) =1 order by num desc limit 1), "") as num;