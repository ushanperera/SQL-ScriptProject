
DROP DATABASE Archive
USE master
GO
CREATE DATABASE Archive 
ON
PRIMARY ( NAME = Arch1,
      FILENAME = 'c:\program files\microsoft sql server\mssql\data\archdat1.mdf',
      SIZE = 100MB,
      MAXSIZE = 200,
      FILEGROWTH = 20),  --FILEGROWTH = 3MB
( NAME = Arch2,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\archdat2.ndf',
   SIZE = 100MB,
   MAXSIZE = 200,
   FILEGROWTH = 20),
( NAME = Arch3,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\archdat3.ndf',
   SIZE = 100MB,
   MAXSIZE = 200,
   FILEGROWTH = 20)
LOG ON 
( NAME = Archlog1,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\archlog1.ldf',
   SIZE = 100MB,
   MAXSIZE = 200,
   FILEGROWTH = 20),
( NAME = Archlog2,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\archlog2.ldf',
   SIZE = 100MB,
   MAXSIZE = 200,
   FILEGROWTH = 20)
GO
