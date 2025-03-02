-- 코드를 입력하세요
-- 보호 시작일보다 입양일이 더 빠른 동물의 id, 이름 조회
-- 보호 시작일이 빠른 순
SELECT ai.ANIMAL_ID, ai.NAME FROM ANIMAL_INS AS ai
INNER JOIN ANIMAL_OUTS AS ao
ON ai.ANIMAL_ID=ao.ANIMAL_ID AND ai.DATETIME > ao.DATETIME
ORDER BY ai.DATETIME;