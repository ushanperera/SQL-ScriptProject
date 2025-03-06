CREATE TRIGGER trgInsteadGuestDetails
on Guest
 INSTEAD OF DELETE
AS 
BEGIN
RAISERROR('Can not delete Guest Contact Number ', 16,17)
END



GO
 DELETE FROM Guest
WHERE GuestID='0125'