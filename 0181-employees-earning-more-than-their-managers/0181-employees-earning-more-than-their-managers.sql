# Write your MySQL query statement below
# select name as Employee from Employee 
# where salary > any (select salary from Employee where managerId = id);
#select ec.salary from Employee as e join Employee as ec where e.managerId = ec.id && ec.salary;

select name as Employee from Employee as emp where salary >(select salary from Employee as emp_cp where emp_cp.id = emp.managerId)