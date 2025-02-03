# Write your MySQL query statement below
SELECT e.employee_id FROM employees as e 
LEFT OUTER JOIN salaries as s 
ON e.employee_id = s.employee_id 
WHERE s.employee_id IS NULL
UNION
SELECT s.employee_id FROM employees as e 
RIGHT OUTER JOIN salaries as s 
ON e.employee_id=s.employee_id 
WHERE e.employee_id IS NULL
ORDER BY employee_id ASC;