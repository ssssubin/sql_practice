# Write your MySQL query statement below
select p2.product_id, ifnull(new_price, 10) as price
from (select p.product_id, p.new_price from products as p 
      join (select product_id, max(change_date) as date 
            from products 
            where change_date <= "2019-08-16" 
            group by product_id) as latest_date 
      on p.product_id = latest_date.product_id and p.change_date = latest_date.date) as p1 
right join (select distinct(product_id) as product_id from products) as p2 
on p1.product_id = p2.product_id;