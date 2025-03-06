CREATE TRIGGER trgUpdateReservationDetails
on Reservation
FOR UPDATE
AS 
BEGIN
RAISERROR('Reservation Details Updated', 16,14)
END

GO
UPDATE Reservation SET ReservationDate=2009-10-02
WHERE ReservationID='1002'