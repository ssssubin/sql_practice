# Write your MySQL query statement below
SELECT 
CASE WHEN id % 2 != 0 THEN COALESCE(LEAD(id) OVER(ORDER BY id), id)
ELSE LAG(id) OVER(ORDER BY id) END AS id,
student 
FROM Seat 
ORDER BY id ASC;