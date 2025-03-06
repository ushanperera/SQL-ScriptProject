CREATE TRIGGER trgUpdateDepatureDate 
on Reservation
FOR UPDATE
AS 
BEGIN
RAISERROR('Reservation Depature Date  Updated', 16,15)
END

GO
UPDATE Reservation SET DepatureDate =2009-11-03
WHERE ReservationID='1003'