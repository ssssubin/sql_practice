-- 코드를 작성해주세요
-- 가장 큰 물고기 10마리 id와 길이
-- 길이 기준 내림차순, id 오름차순
SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID
LIMIT 10;
