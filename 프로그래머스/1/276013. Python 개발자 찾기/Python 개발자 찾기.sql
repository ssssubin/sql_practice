-- 코드를 작성해주세요
-- Python 스킬 가진 개발자 ID, 이름, 성 조회
-- ID 기준 오름차순
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 = "Python" OR SKILL_2 = "Python" OR SKILL_3 = "Python"
ORDER BY ID;