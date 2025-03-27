-- 코드를 작성해주세요
-- 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV),
-- 대장균 개체의 ID(ID) 출력
-- 분화된 연도별 대장균 크기의 편차는
-- 분화된 연도별 가장 큰 대장균 크기 - 각 대장균 크기
-- 연도에 대해 오름차순, 같은 연도에 대해서는 대장균 크기의 편차에 대한 오름차순
SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR,
MAX(SIZE_OF_COLONY) OVER(PARTITION BY YEAR(DIFFERENTIATION_DATE)) - SIZE_OF_COLONY AS YEAR_DEV,
ID
FROM ECOLI_DATA
ORDER BY YEAR, YEAR_DEV;