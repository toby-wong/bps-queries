SELECT *
FROM BPS_Patients
WHERE StatusText = 'Active'
and dob > dateadd(year,-60, getdate())
and InternalID in (select internalid
    from appointments
    inner join APPOINTMENTTYPES on APPOINTMENTS.APPOINTMENTTYPE = APPOINTMENTTYPES.APPOINTMENTCODE
    where APPOINTMENTS.RECORDSTATUS = 1
    and (DESCRIPTION like 
'%dose 1%' OR DESCRIPTION like '%NEW AMS%') 
    and APPOINTMENTDATE between DATEADD(day, -1, GETDATE()) and DATEADD(day, 14, getdate()))
ORDER BY Surname, Firstname