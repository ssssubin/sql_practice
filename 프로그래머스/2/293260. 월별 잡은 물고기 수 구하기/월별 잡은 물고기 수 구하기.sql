-- 코드를 작성해주세요
-- 월별 잡은 물고기 수(FISH_COUNT) & 월(MONTH)
-- 월은 숫자 형태(1~12)로 출력, 9 이하 숫자는 두 자리로 출력 X
-- 잡은 물고기가 없는 월은 출력 X
SELECT COUNT(ID) AS FISH_COUNT, MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
ORDER BY MONTH(TIME);