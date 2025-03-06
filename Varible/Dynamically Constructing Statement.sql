
DECLARE @vdbname varchar(30),@vtblname varchar(30)
SET @vdbname='Northwind'
SET @vtblname='Products'
EXEC('USE ' + @vdbname + ' SELECT * FROM ' + @vtblname)--Remember to Keep Spaces
