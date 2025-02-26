-- 코드를 작성해주세요
-- 잡은 물고기의 평균 길이
-- AVERAGE_LENGTH
-- 평균 길이는 소수점 3째자리에서 반올림
-- 10cm 이하 물고기들은 10cm로 취급
WITH FISH_LENGTH AS (
    SELECT if(length is null or length <= 10, 10, length) as length FROM FISH_INFO
)
SELECT ROUND(AVG(LENGTH), 2) AS AVERAGE_LENGTH
FROM FISH_LENGTH;