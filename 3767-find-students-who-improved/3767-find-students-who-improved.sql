# Write your MySQL query statement below
WITH result as (
    SELECT student_id, subject, 
    FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY exam_date) as first_score,
    FIRST_VALUE(score) OVER(PARTITION BY student_id, subject ORDER BY  exam_date DESC) as latest_score 
    FROM scores
)
SELECT DISTINCT * FROM result WHERE first_score< latest_score;