SELECT *
FROM BPS_Patients p
INNER JOIN BPS_Patients AS p1 ON NOT p1.internalid = p.internalid
 AND p.dob = p1.dob
 AND p.surname = p1.surname
 AND p.firstname = p1.firstname
WHERE p.StatusText = 'Active' AND p1.statustext = 'Active'
ORDER BY p.surname, p.firstname
