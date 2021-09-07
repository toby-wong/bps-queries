SELECT *
FROM BPS_Patients
WHERE StatusText = 'Active'
AND DOB > DateAdd(Year, -16, GetDate())
AND InternalID IN (SELECT InternalID FROM Immunisations WHERE VaccineID = 170 AND RecordStatus = 1)
ORDER BY surname, firstname
