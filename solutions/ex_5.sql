USE sql_intro;

SELECT p.symptoms_family, COUNT(*) AS total_patients
FROM patient p
WHERE p.disease = 'cabbage disease'
GROUP BY p.symptoms_family;