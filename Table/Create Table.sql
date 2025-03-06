
CREATE DATABASE Student
go
--USE Student
--go
--CREATE TABLE Marks(SID INT,Sname VARCHAR(8),SMarks INT) --Partially Qulified
CREATE TABLE Student.dbo.Marks(SID INT,Sname VARCHAR(8),SMarks INT) --Fully Qulified
go
DROP TABLE Marks 
go
USE northwind
go
DROP DATABASE Student


-----------------------Additional----------------------
CREATE TABLE mytable 
   (
    low int,
    high int,
    myavg AS (low + high)/2
   )

insert mytable values(4,6)
select * from mytable




CREATE TABLE Sales
   (SaleID INT IDENTITY(100000,1) NOT FOR REPLICATION,
             CHECK NOT FOR REPLICATION (SaleID <= 199999),
    SalesRegion CHAR(2),
   CONSTRAINT ID_PK PRIMARY KEY (SaleID)
   )



CREATE TABLE mylogintable
   ( 
    date_in datetime,
    user_id int,
    myuser_name AS USER_NAME()
   )
