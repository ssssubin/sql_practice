# Write your MySQL query statement below
SELECT * FROM users 
WHERE email REGEXP("^([A-Za-z0-9]|_)+@[A-Za-z]+\.com$")
ORDER BY user_id;