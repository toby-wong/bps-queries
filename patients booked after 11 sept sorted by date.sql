SELECT *
FROM BPS_Patients p
JOIN APPOINTMENTS a on p.InternalID = a.InternalID 
AND a.APPOINTMENTDATE >  '20210911'
ORDER BY a.APPOINTMENTDATE,  surname, firstname