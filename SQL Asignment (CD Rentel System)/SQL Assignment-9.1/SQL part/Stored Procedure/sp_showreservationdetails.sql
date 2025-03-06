CREATE PROC sp_showreservationdetails
@ReservationID varchar(6) As
BEGIN
IF EXISTS (SELECT * FROM Reservation WHERE ReservationID=@ReservationID)
BEGIN
PRINT 'Reservation Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given ReservationID'
RETURN 1
END
GO

EXEC sp_showreservationdetails @ReservationID="sss" 