-- 코드를 작성해주세요

SELECT CASE WHEN ROUND((MONTH(DIFFERENTIATION_DATE)/3), 1) BETWEEN 0 AND 1 THEN "1Q"
			WHEN ROUND((MONTH(DIFFERENTIATION_DATE)/3), 1) BETWEEN 1.01 AND 2 THEN "2Q"
            WHEN ROUND((MONTH(DIFFERENTIATION_DATE)/3), 1) BETWEEN 2.01 AND 3 THEN "3Q"
            WHEN ROUND((MONTH(DIFFERENTIATION_DATE)/3), 1) BETWEEN 3.01 AND 4 THEN "4Q"
            END AS QUARTER,
            COUNT(ID) AS ECOLI_COUNT  
FROM ECOLI_DATA
GROUP BY QUARTER
ORDER BY QUARTER;