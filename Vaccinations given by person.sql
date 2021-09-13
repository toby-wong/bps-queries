SELECT *
FROM BPS_Patients
WHERE StatusText = 'Active'
AND( InternalID IN (SELECT InternalID FROM Immunisations WHERE VaccineID = 172)
OR InternalID IN (SELECT InternalID FROM Immunisations WHERE VaccineID = 170))
AND InternalID IN (SELECT InternalID FROM Visits WHERE UserID = 
~~ Insert UserID
AND RecordStatus = 1)
ORDER BY surname, firstname
