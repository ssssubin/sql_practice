# Write your MySQL query statement below
select round(sum(if(d.order_date = d.delivery_date, 1, 0))/count(customer_id) * 100, 2) as immediate_percentage
from (select distinct customer_id, 
first_value(order_date) over (partition by customer_id order by order_date) as order_date, 
first_value(customer_pref_delivery_date) over (partition by customer_id order by order_date) as delivery_date
 from Delivery) as d;