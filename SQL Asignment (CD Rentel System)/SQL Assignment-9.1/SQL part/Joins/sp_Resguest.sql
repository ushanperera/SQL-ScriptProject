CREATE PROCEDURE sp_Resguest  @id varchar(6) AS 
(
SELECT * FROM 
[Guest ] RIGHT JOIN [Reservation] 
	ON [Guest].[GuestID]=[Reservation].[GuestID]

WHERE [Guest].[GuestID]=@id

)

GO
EXEC sp_Resguest @id="1"