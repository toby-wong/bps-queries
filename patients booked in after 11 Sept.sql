SELECT *
FROM BPS_Patients
WHERE StatusText = 'Active'
AND InternalID IN (SELECT InternalID FROM APPOINTMENTS WHERE 
-- Set your desired appointment date here, format is YYYYMMDD.
APPOINTMENTDATE > '20210911' and RECORDSTATUS = 1)
ORDER BY surname, firstname

-- Patients over 75 with an appointment on a given day who haven't been billed a 701, 703, 705 or 707in the past year