# Write your MySQL query statement below
select pw.id from Weather as pw join Weather as cw on cw.recordDate = (pw.recordDate-interval 1 day)
where cw.temperature < pw.temperature;

# 현재 날짜 - interval 1 day -> 하루 전 날짜
# 현재 날짜 + interval 1 day -> 하루 뒤 날짜

# 현재 날짜 - interval 3 month -> 3달 전 날짜
# 현재 날짜 + interval 3 month -> 3달 후 날짜

# 현재 날짜 - interval 5 year -> 5년 전 날짜
# 현재 날짜 + interval 5 year -> 5년 후 날짜