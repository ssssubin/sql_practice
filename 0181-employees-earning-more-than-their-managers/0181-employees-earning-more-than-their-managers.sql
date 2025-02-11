# Write your MySQL query statement below
SELECT name as Employee 
FROM Employee as emp 
WHERE salary > (SELECT salary FROM Employee as emp_cp WHERE emp_cp.id = emp.managerId)