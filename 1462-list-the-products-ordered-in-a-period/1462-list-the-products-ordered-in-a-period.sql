# Write your MySQL query statement below
select product_name, sum(unit) as unit from Products as p 
join Orders as o on p.product_id = o.product_id 
where date_sub("2020-03-01", INTERVAL 1 month) <= order_date and order_date<= date_sub("2020-03-01", INTERVAL 1 day) 
group by product_name 
having sum(unit)>= 100;