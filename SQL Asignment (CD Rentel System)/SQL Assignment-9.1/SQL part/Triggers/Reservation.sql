Exec sp_Columns Reservation

Create Function fnReservationID 
(@ReservationDate DateTime)
Returns int

Begin 

Return(Select ReservationID   From Reservation 
Where  ReservationDate=@ReservationDate)

End

