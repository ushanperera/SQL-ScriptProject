
CREATE DATABASE Test1  on primary -- Database
(
 NAME = Test1dat1, 
 FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL\data\t1dat1.ndf',
 SIZE = 5MB,
 MAXSIZE = 100MB,
 FILEGROWTH = 5MB
)



-- ADD FILE 
GO
ALTER DATABASE Test1 
ADD FILE 
(
 NAME = Test1dat2,
 FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL\data\t1dat2.ndf',
 SIZE = 5MB,
 MAXSIZE = 100MB,
 FILEGROWTH = 5MB
)
GO



-- MODIFY FILE
GO
ALTER DATABASE Test1 
MODIFY FILE
   (NAME = Test1dat2,
   SIZE = 20MB)
GO



/*
USE master
GO
ALTER DATABASE Test1
ADD FILEGROUP Test1FG1
GO

ALTER DATABASE Test1 
ADD FILE 
( NAME = test1dat3,
  FILENAME = 'c:\Program Files\Microsoft SQL Server\MSSQL\Data\t1dat3.ndf',
  SIZE = 5MB,
  MAXSIZE = 100MB,
  FILEGROWTH = 5MB),
( NAME = test1dat4,
  FILENAME = 'c:\Program Files\Microsoft SQL Server\MSSQL\Data\t1dat4.ndf',
  SIZE = 5MB,
  MAXSIZE = 100MB,
  FILEGROWTH = 5MB)
TO FILEGROUP Test1FG1

ALTER DATABASE Test1
MODIFY FILEGROUP Test1FG1 DEFAULT
*/