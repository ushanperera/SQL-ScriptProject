
CREATE PROC sp_showroomdetails
@RoomNumber varchar(4)
As
BEGIN
IF EXISTS (SELECT * FROM Room WHERE RoomNumber=@RoomNumber)
BEGIN
PRINT 'Room Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given RoomNumber'
RETURN 1
END
GO

EXEC sp_showroomdetails @RoomNumber="sss" 