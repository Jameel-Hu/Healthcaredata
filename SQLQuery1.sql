SELECT CONCAT('Patient ', h.patient_nbr,' was ',d.race,' and ',
      CASE WHEN h.readmiited = "NO" THEN " was not readmitted. They had " ELSE 
            " was readmiited. They had " END,
   h.num_medications, " medications and", h.num_lab_procedures, " lab procedures." as Summary
FROM patient.health h
INNER JOIN patient.demographics d
ON h.patient_nbr=d.patient_nbr
ORDER BY h.num_medications DESC, num_lab_procedures DESC
LIMIT 50;