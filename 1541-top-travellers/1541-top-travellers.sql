# Write your MySQL query statement below
SELECT u.name, SUM(IFNULL(r.distance, 0)) as travelled_distance 
FROM users as u 
LEFT JOIN rides as r 
ON u.id = r.user_id 
GROUP BY u.name, u.id 
ORDER BY travelled_distance DESC, name ASC;