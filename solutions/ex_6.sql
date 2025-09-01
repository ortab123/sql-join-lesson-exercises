USE sql_intro;

SELECT e.name AS ethnicity_name, COUNT(*) AS lettuce_disease_patients
FROM patient p
JOIN ethnicity e ON p.ethnicity = e.id
WHERE p.disease = 'lettuce disease'
GROUP BY e.name;