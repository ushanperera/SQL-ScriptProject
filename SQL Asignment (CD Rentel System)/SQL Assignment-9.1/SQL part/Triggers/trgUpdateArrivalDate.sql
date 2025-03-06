CREATE TRIGGER trgUpdateArrivalDate
on Reservation
FOR UPDATE
AS 
BEGIN
RAISERROR('Reservation Arrival Date Updated', 16,12)
END

GO
UPDATE Reservation SET ArrivalDate=2009-10-23
WHERE ReservationID='1003'