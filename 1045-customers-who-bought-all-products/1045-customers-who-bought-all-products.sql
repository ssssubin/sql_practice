# Write your MySQL query statement below
select customer_id from (select count(product_key) as count, customer_id from (select distinct(product_key), customer_id from customer) as result group by customer_id)
 as b join (select count(*) as count from product) as p on b.count = p.count;