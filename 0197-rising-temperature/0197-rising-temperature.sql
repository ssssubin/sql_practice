# Write your MySQL query statement below
select pw.id from Weather as pw join Weather as cw on cw.recordDate = (pw.recordDate-interval 1 day) 
where cw.temperature < pw.temperature;