SELECT *
FROM BPS_Patients
inner join BPS_Patients as B1 on not b1.internalid = BPS_Patients.internalid
 and BPS_Patients.dob = b1.dob
 and BPS_Patients.surname = b1.surname
 and BPS_Patients.firstname = b1.firstname
WHERE BPS_Patients.StatusText = 'Active' and b1.statustext = 'Active'
ORDER BY BPS_Patients.surname, BPS_Patients.firstname