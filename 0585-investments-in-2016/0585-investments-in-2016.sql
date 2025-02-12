# Write your MySQL query statement below
WITH result as(
       SELECT tiv_2016, COUNT(pid) OVER(PARTITION BY tiv_2015) as c1, 
       COUNT(pid) OVER(PARTITION BY lat, lon) as c2 
       FROM insurance
       )
SELECT ROUND((SUM(tiv_2016)), 2) as tiv_2016 FROM result WHERE c1 <> 1 AND c2 =1;