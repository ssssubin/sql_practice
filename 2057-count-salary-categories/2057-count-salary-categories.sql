# Write your MySQL query statement below
SELECT 'Low Salary' as category, COUNT(income) as accounts_count 
FROM accounts 
WHERE income < 20000
UNION
SELECT 'Average Salary' as category, COUNT(income) as accounts_count
FROM accounts 
WHERE income >=20000 AND income <= 50000
UNION
SELECT 'High Salary' as category, COUNT(income) as accounts_count 
FROM accounts 
WHERE income > 50000;