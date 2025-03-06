
DROP DATABASE CDReservation
CREATE DATABASE CDReservation
USE CDReservation
------------------------------------------------------------------------------------------------
CREATE TABLE member(
	memberID INT PRIMARY KEY ,
	lName VARCHAR(20)NOT NULL,
	fName VARCHAR(25),
	addr VARCHAR(100),
	city VARCHAR(30),
	place VARCHAR(15),
	jDate datetime NOT NULL DEFAULT GETDATE())

INSERT INTO member(memberID ,lName,fName,addr,city,place) VALUES(1,'s','s','s','s','s')
drop table member
select * from member
------------------------------------------------------------------------------------------------
CREATE TABLE title( 
	titleID INT PRIMARY KEY,
	title VARCHAR(60)NOT NULL,
	[description] VARCHAR(400),
	rating VARCHAR(4) CHECK (rating IN ('g', 'pg', 'r', 'no17', 'nr')),
	category VARCHAR(20)CHECK (category IN ('Drama', 'Comody', 'Action', 'Child', 'Scifc','Documentry')),
	relDate datetime)

INSERT INTO title VALUES(1,'aaa','dfsdfsd','nr','Drama','2009/12/01')
select * from title
------------------------------------------------------------------------------------------------
CREATE TABLE fileCopy ( 
	copyID INT PRIMARY KEY,
	titleID INT FOREIGN KEY(titleID) REFERENCES dbo.title(titleID)ON UPDATE CASCADE,
	ststus VARCHAR(10) NOT NULL CHECK (ststus IN ('Available', 'Distroyed', 'Rented', 'Reserved')))

DROP TABLE fileCopy
INSERT INTO fileCopy VALUES(1,1,'Rented')
select * from fileCopy
------------------------------------------------------------------------------------------------
CREATE TABLE rentel( 
	bookedDate DATETIME DEFAULT GETDATE(),
	memberID INT FOREIGN KEY REFERENCES dbo.member(memberID)ON UPDATE CASCADE,
	copyID INT FOREIGN KEY REFERENCES dbo.fileCopy(copyID)ON UPDATE CASCADE,
	actRntDate DATETIME,
	expRntDate  AS (actRntDate+2),
	titleID INT FOREIGN KEY REFERENCES dbo.title(titleID)ON delete CASCADE)--Because of a conflict of cascade

DROP TABLE rentel
INSERT INTO rentel(memberID,copyID,actRntDate,titleID) VALUES (1,1,'2009/12/01',1)
SELECT * FROM rentel
------------------------------------------------------------------------------------------------
CREATE TABLE reservation( 
	resDate DATETIME PRIMARY KEY,
	memberID INT FOREIGN KEY REFERENCES dbo.member(memberID)ON UPDATE CASCADE,
	titleID INT FOREIGN KEY REFERENCES dbo.title(titleID)ON UPDATE CASCADE)

INSERT INTO reservation VALUES('2009/12/01',1,1)
SELECT * FROM reservation
drop table reservation