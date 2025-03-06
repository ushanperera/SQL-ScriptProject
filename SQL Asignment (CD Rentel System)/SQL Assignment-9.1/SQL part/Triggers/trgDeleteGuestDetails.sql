
CREATE TRIGGER trgDeleteGuestDetails
on Guest
FOR DELETE
AS 
IF(Select count(*)from Deleted)>1
BEGIN
RAISERROR('You can not delete more than one HomePhone at a time', 16,1)
ROLLBACK TRANSACTION
END


GO
DELETE From Guest HomePhone='0112548796'
WHERE GuestID='0152'
