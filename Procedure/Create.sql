USE pubs
  DROP PROCEDURE au_info_all

CREATE PROCEDURE au_info_all
  AS
	SELECT au_lname, au_fname
	FROM authors 

EXEC au_info_all -- EXECUTE au_info_all or au_info_all


----------------------------------------------------------------------------------------
USE pubs
   DROP PROCEDURE au_info

CREATE PROCEDURE au_info
   @lastname varchar(40), 
   @firstname varchar(20) 
AS 
SELECT au_lname, au_fname
   FROM authors 
   WHERE  au_fname = @firstname AND au_lname = @lastname

EXEC au_info 'Dull', 'Ann'


------------------------------------------------------------------------------------------
CREATE TABLE m1(Ename varchar(20))

CREATE PROCEDURE m1_insert @name varchar(40)
as
INSERT INTO m1 values (@name)

select * from m1
exec m1_insert 'Dull'

--Paramiterized-----------------------------------------------------------------------------------

create proc sum1 (@a int,@b int, @tot int output )
as 
set @tot=@a+@b
return @tot




DECLARE @ReturnValue INT
 exec @ReturnValue = sum1 @a=5,@b=2,@tot=0
print @ReturnValue