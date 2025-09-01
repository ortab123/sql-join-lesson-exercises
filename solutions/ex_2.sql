USE sql_intro;

SELECT COUNT(*) AS total_sick_patients
FROM patient
WHERE disease IS NOT NULL;