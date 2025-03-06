
USE Northwind
DECLARE @vLastName CHAR(20),@vFirstName VARCHAR(11)
SET @vLastName='Dodsworth'
SELECT @vFirstName=Firstname FROM Employees WHERE lastname=@vLastName
PRINT @vFirstName +' '+ @vLastName
