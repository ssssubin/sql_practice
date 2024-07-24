# Write your MySQL query statement below

select su.student_id, su.student_name, su.subject_name, count(ex.subject_name) as attended_exams
from (select * from Students cross join Subjects) as su 
left join Examinations as ex on su.subject_name = ex.subject_name and su.student_id = ex.student_id 
group by su.student_id, su.subject_name, su.student_name 
order by student_id asc;