-- 코드를 입력하세요
-- 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인
-- 동물의 아이디, 이름, 성별 및 중성화 여부 조회
-- 아이디 순으로 조회
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME = 'Lucy' 
   OR NAME = 'Ella' 
   OR NAME = 'Pickle' 
   OR NAME = 'Rogan' 
   OR NAME = 'Sabrina'
   OR NAME = 'Mitty'
ORDER BY ANIMAL_ID;