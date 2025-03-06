
----------------------------------------------Member Table-----------------------------------------------------
drop table member
select * from member
DROP PROCEDURE insert_member_SP

CREATE PROCEDURE insert_member_SP
	@memberID INT ,
	@lName VARCHAR(20),
	@fName VARCHAR(25),
	@addr VARCHAR(100),
	@city VARCHAR(30),
	@place VARCHAR(15)	
	AS
	  INSERT INTO member(memberID ,lName,fName,addr,city,place)
	  VALUES(@memberID,@lName,@fName,@addr,@city,@place)

EXEC insert_member_SP   01,'Perera','Kamal','55/b Colombo','Ja-ela','Town' -- JDate is Default in Table

----------------------------------------------Title Table-------------------------------------------------------------

CREATE PROCEDURE insert_title_SP
	@titleID INT ,
	@title VARCHAR(20),
	@des VARCHAR(25),
	@rating VARCHAR(100),
	@category VARCHAR(30),
	@relDate VARCHAR(15)	
AS
INSERT INTO title VALUES(@titleID,@title,@des,@rating,@category,@relDate)

EXEC  insert_title_SP 01,'Titenic','2 cds','g','Drama','1980-01-22'


----------------------------------------------fileCopy Table-----------------------------------------------------------

CREATE PROCEDURE insert_fileCopy_SP
	@cid INT,
	@tid INT,
	@ststus VARCHAR(10) 
	AS
	  INSERT INTO fileCopy VALUES(@cid ,@tid,@ststus)

EXEC  insert_fileCopy_SP    1,1,'Rented'


----------------------------------------------Rente Tablel-------------------------------------------------------------


CREATE PROCEDURE insert_rentel_SP	
	@memberID INT, 
	@copyID INT ,
	@actRntDate DATETIME,
	@titleID INT 
	AS
	  INSERT INTO rentel(memberID,copyID,actRntDate,titleID) VALUES (@memberID,@copyID,@actRntDate,@titleID)

EXEC  insert_rentel_SP   1,1,'2009/12/01',1



----------------------------------------------Reservation Table--------------------------------------------------------

CREATE PROCEDURE insert_reservation_SP
	@resDate DATETIME ,
	@memberID INT ,
	@titleID INT
AS
INSERT INTO reservation VALUES(@resDate,@memberID,@titleID)

EXEC  insert_reservation_SP   '2009/12/01',1,1


----------------------------------------------End-----------------------------------------------------------------------