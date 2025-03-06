

ALTER DATABASE abc
ADD FILE (NAME = SPri1_dat,
   	  FILENAME = 'c:\program files\microsoft sql server\mssql\data\SPri1dat.mdf',
   	  SIZE = 10,
	  MAXSIZE = 50,
	  FILEGROWTH = 15% ) TO FILEGROUP department