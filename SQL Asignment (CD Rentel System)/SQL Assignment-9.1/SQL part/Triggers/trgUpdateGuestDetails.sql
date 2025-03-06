CREATE TRIGGER trgUpdateGuestDetails
on Guest
FOR UPDATE
AS 
BEGIN
RAISERROR('Guest Contact Number Updated', 16,10)
END


GO
UPDATE Guest SET HomePhone='0112457852'
WHERE GuestID='0125'