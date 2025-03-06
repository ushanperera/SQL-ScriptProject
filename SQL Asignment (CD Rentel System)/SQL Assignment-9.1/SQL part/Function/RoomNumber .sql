Create Function fnRoomNumber 
(@RoomNumber Varchar(4))
Returns int

Begin 

Return(Select RoomNumber    From Room  
Where  RoomNumber=@RoomNumber)

End
