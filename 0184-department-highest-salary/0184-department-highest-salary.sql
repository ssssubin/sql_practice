# Write your MySQL query statement below
WITH e AS (
SELECT MAX(salary) as salary, departmentId FROM employee GROUP BY departmentId
)
SELECT d.name as Department, er.name as Employee, er.salary as Salary 
FROM department as d 
JOIN (SELECT name, e.salary, e.departmentId 
      FROM employee as e1 
      JOIN e 
      ON e1.salary = e.salary AND e1.departmentId = e.departmentId) as er 
ON d.id = er.departmentId; 