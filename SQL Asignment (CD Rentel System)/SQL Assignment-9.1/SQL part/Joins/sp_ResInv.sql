CREATE PROCEDURE sp_ResInv  @id varchar(6) AS 
(
SELECT * FROM 
[Reservation] RIGHT JOIN [Invoice] 
	ON [Reservation].[ReservationID]=[Invoice].[ReservationID]

WHERE [Reservation].[ReservationID]=@id

)

GO
EXEC sp_ResInv @id="1"