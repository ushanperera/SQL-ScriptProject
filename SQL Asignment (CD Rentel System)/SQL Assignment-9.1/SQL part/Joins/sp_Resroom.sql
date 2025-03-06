CREATE PROCEDURE sp_Resroom  @id varchar(6) AS 
(
SELECT * FROM 
[Reservation] RIGHT JOIN [Room] 
	ON [Reservation].[ReservationID]=[Room].[ReservationID]

WHERE [Reservation].[ReservationID]=@id

)

GO
EXEC sp_Resroom @id="1"