# Write your MySQL query statement below
SELECT u.name, SUM(t.amount) as balance FROM users as u 
INNER JOIN transactions as t 
ON u.account=t.account 
GROUP BY u.name 
HAVING balance > 10000;