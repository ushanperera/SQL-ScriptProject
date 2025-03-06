CREATE DATABASE Employees
ON 
( NAME = Emp_data,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\Emp_data.Mdf',
   SIZE = 50MB,
   MAXSIZE = 150MB,
   FILEGROWTH = 20%)

DROP DATABASE Employees

sp_helpdb Employees






DBCC SHRINKDATABASE(Employees,10) -- Database

DBCC SHRINKFILE(Emp_data,10) -- File





----------------additional------------------
USE pubs
EXEC sp_spaceused 'titles' --table size
