USE pubs
GO


CREATE PROCEDURE Oakland_authors
AS 
 SELECT au_fname, au_lname, address, city, zip
 FROM pubs..authors
 WHERE city = 'Oakland' and state = 'CA'
 ORDER BY au_lname, au_fname

exec Oakland_authors


GO


ALTER PROCEDURE Oakland_authors WITH ENCRYPTION -- Protected Method
AS 
 SELECT au_fname, au_lname, address, city, zip
 FROM pubs..authors
 WHERE state = 'CA'
 ORDER BY au_lname, au_fname
GO

