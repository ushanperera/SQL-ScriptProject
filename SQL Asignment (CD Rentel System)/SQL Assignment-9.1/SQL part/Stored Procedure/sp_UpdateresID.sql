DROP PROCEDURE [sp_UpdateresID]
GO
CREATE PROCEDURE [sp_UpdateresID]  @id int AS 
(

SELECT * FROM 
([Reservation]LEFT JOIN [Room] 
	ON [Reservation].[ReservationID] = [Room].[ReservationID])
LEFT JOIN [Invoice]
ON [Reservation].ReservationID = [Invoice].ReservationID 

WHERE [Reservation].[ReservationID]=@id

)

GO