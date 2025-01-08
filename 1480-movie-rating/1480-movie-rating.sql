# Write your MySQL query statement below
(select name as results from users as u 
join MovieRating as mr 
on u.user_id = mr.user_id 
group by name 
order by count(movie_id) desc, name asc 
limit 1) 
union all 
(select m.title as results from movies as m 
join MovieRating as mr 
on m.movie_id = mr.movie_id 
where mr.created_at >= '2020-02-01' AND mr.created_at < '2020-03-01' 
group by m.movie_id, m.title 
order by avg(mr.rating) desc, title asc 
limit 1);