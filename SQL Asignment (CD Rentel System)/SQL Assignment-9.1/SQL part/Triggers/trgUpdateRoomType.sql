CREATE TRIGGER trgUpdateRoomType
on Room
FOR UPDATE
AS 
BEGIN
RAISERROR('Room Type  Updated', 16,16)
END

GO
UPDATE Room SET RoomType ='Classical'
WHERE RoomNumber='125'