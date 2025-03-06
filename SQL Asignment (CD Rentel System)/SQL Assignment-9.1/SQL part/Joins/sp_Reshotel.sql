CREATE PROCEDURE sp_Reshotel  @id varchar(6) AS 
(
SELECT * FROM 
[Hotel ] RIGHT JOIN [Guest] 
	ON [Hotel].[Name]=[Guest].[Name]

WHERE [Hotel].[Name]=@id

)

GO
EXEC sp_Reshotel @id="1"
