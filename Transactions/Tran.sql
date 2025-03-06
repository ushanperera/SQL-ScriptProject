--try catch is only supports in sql2005

CREATE TABLE Products  (pid INT IDENTITY PRIMARY KEY,
			pname VARCHAR(20),
			stdPrice MONEY)

CREATE TABLE Customors (cid INT IDENTITY PRIMARY KEY,
			cname VARCHAR(20),
			tele VARCHAR(20),
			adress VARCHAR(20))

CREATE TABLE Sales (sid INT ,--IDENTITY PRIMARY KEY,
			cid INT REFERENCES Customors(cid),
			sdate DATETIME,
			salesprice MONEY)


DECLARE @cid INT
BEGIN TRANSACTION 
 --BEGIN TRY
	INSERT INTO Customors VALUES('Kamal',0777123456,'Kandana')
	SET @cid=@@IDENTITY  -- Entered value
	INSERT Sales  VALUES(1,@cid,GETDATE(),15000)
	COMMIT TRANSACTION 
 --END TRY
    BEGIN catch
       ROLLBACK TRANSACTION
    END catch

select * from Customors
select * from Sales


drop TABLE Sales
drop TABLE Products
drop TABLE Customors

