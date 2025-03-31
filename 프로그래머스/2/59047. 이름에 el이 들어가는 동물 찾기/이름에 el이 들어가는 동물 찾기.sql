-- 코드를 입력하세요
-- 이름에 "EL"이 들어간느 개의 ID와 이름 조회
-- 이름 순, 대소문자 구별 X
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE "%EL%" AND ANIMAL_TYPE = "Dog"
ORDER BY NAME;