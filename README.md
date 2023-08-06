# Healthcaredata
SELECT  ROUND(AVG(time_in_hospital), 0) as days_stay, 
      CASE HEN num_lab_procedures >= 0 AND num_lab_procedures < 25 THEN "few"
          WHEN num_lab_procedures >= 25 AND num_lab_procedures < 55 THEN "average"
          WHEN num_lab_procedures >= 55 THEN "many" END AS procedure_frequency
      
FROM patient.health
GROUP BY procedure_frequency
ORDER BY days_stay;
SELECT d.race, ROUND(AVG(h.num_lab_procedures),1) as average_num_lab_procedures
FROM patient.health h
JOIN patient.demographics d
ON h.patient_nbr=d.patient_nbr
GROUP BY d.race
ORDER BY average_num_lab_procedures DESC;
