CREATE PROC sp_showhoteldetails
@Name Varchar(20)
As
BEGIN
IF EXISTS (SELECT * FROM Hotel WHERE Name=@Name)
BEGIN
PRINT 'Hotel Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given Hotel Name'
RETURN 1
END

GO

EXEC sp_showhoteldetails @Name="sss" 

