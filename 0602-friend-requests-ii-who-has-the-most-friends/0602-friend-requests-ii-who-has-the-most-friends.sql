# Write your MySQL query statement below
SELECT id, SUM(num) as num 
FROM (SELECT requester_id as id, COUNT(accepter_id) as num 
      FROM requestaccepted 
      GROUP BY requester_id 
      UNION ALL
      SELECT accepter_id as id, COUNT(requester_id) as num 
      FROM requestaccepted 
      GROUP BY accepter_id) as u 
GROUP BY id 
ORDER BY num DESC LIMIT 1;