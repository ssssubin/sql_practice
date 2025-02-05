# Write your MySQL query statement below
SELECT employee_id, 
IF(employee_id%2<>0 AND name NOT LIKE "m%" AND name NOT LIKE "M%", salary, 0) as bonus 
FROM employees
ORDER BY employee_id;