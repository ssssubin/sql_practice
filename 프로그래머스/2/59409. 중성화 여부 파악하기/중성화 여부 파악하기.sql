-- 코드를 입력하세요
-- 중성화된 동물 SEX_UPON_INTAKE -> Neutered or Spayed 포함
-- 동물 id, 이름. 중성화 여부
-- 아이디 순 조회
-- 중성화 되어있으면 O, 아니면 x
SELECT ANIMAL_ID, NAME, 
       CASE WHEN SEX_UPON_INTAKE LIKE "Neutered%" OR SEX_UPON_INTAKE LIKE "Spayed%" THEN "O"
       ELSE "X" END AS "중성화"
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;