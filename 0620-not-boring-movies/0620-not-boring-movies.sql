# Write your MySQL query statement below
select id, movie, description, round(rating, 2) as rating from Cinema where description <> "boring" and id%2!=0 order by rating desc;