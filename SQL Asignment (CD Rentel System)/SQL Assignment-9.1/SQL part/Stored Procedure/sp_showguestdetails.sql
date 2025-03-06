CREATE PROC sp_showguestdetails
@GuestID varchar(5)
As
BEGIN
IF EXISTS (SELECT * FROM Guest WHERE GuestID=@GuestID)
BEGIN
PRINT 'Guest Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given GuestID'
RETURN 1
END

GO

EXEC sp_showguestdetails @GuestID="sss"