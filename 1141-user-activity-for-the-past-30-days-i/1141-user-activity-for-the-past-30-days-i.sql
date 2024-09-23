# Write your MySQL query statement below
select day, count(distinct user_id) as active_users
from (select activity_date as day, user_id from activity group by day, user_id having day > "2019-06-27" and day <= "2019-07-27") as act
group by day;
