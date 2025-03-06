Create Function fnGuestID 
(@FirstName Varchar(10))
Returns int

Begin 

Return(Select GuestID  From Guest
Where  FirstName=@FirstName)

End