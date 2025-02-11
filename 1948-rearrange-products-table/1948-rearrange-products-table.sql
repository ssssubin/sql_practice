# Write your MySQL query statement below
WITH st1 AS (
SELECT product_id, "store1" as store, CASE WHEN store1 THEN store1 end as price FROM products
),
st2 AS (
SELECT product_id,"store2" as store, CASE WHEN store2 THEN store2 end as price FROM products
),
st3 AS (
SELECT product_id, "store3" as store, CASE WHEN store3 THEN store3 end as price FROM products
)
SELECT * FROM st1 WHERE price IS NOT NULL UNION SELECT * FROM st2 WHERE price IS NOT NULL UNION SELECT * FROM st3 WHERE price IS NOT NULL;