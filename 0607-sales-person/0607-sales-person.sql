# Write your MySQL query statement below
SELECT name FROM salesPerson 
WHERE sales_id
NOT IN (SELECT sales_id FROM company as c 
JOIN orders as o 
ON c.com_id = o.com_id AND c.name = "RED");