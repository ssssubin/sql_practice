# Write your MySQL query statement below
SELECT u.user_id as buyer_id, u.join_date, COUNT(o.buyer_id) as orders_in_2019 
FROM users as u 
LEFT JOIN (SELECT buyer_id 
           FROM orders 
           WHERE order_date BETWEEN "2019-01-01" AND "2019-12-31"
           ) as o
ON u.user_id = o.buyer_id 
GROUP BY u.user_id, u.join_date;