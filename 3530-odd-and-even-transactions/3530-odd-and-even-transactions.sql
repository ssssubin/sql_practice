# Write your MySQL query statement below
WITH odd AS(
    SELECT transaction_date, SUM(amount) as odd_sum, 0 as even_sum 
    FROM transactions 
    WHERE amount %2 <> 0 
    GROUP BY transaction_date
),
even AS(
    SELECT transaction_date, 0 as odd_sum, SUM(amount) as even_sum 
    FROM transactions 
    WHERE amount %2 = 0 
    GROUP BY transaction_date
)
SELECT transaction_date, SUM(result.odd_sum) as odd_sum, SUM(result.even_sum) as even_sum 
FROM (SELECT * FROM odd UNION SELECT * FROM even) as result
GROUP BY transaction_date
ORDER BY transaction_date;