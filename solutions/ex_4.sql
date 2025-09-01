USE sql_intro;

USE sql_intro;

SELECT p.id, d.survival_rate
FROM patient p
JOIN disease d ON p.disease = d.name
WHERE p.disease IS NOT NULL
ORDER BY p.id ASC;
