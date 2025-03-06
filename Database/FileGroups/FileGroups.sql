
CREATE DATABASE Sales
ON PRIMARY  -- explicitly specified with the PRIMARY keyword
( NAME = SPri1_dat,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\SPri1dat.mdf',
   SIZE = 10,
   MAXSIZE = 50,
   FILEGROWTH = 15% ),
( NAME = SPri2_dat,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\SPri2dt.ndf',
   SIZE = 10,
   MAXSIZE = 50,
   FILEGROWTH = 15% ),

FILEGROUP SalesGroup1
( NAME = SGrp1Fi1_dat,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\SG1Fi1dt.ndf',
   SIZE = 10,
   MAXSIZE = 50,
   FILEGROWTH = 5 ),
( NAME = SGrp1Fi2_dat,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\SG1Fi2dt.ndf',
   SIZE = 10,
   MAXSIZE = 50,
   FILEGROWTH = 5 ),

FILEGROUP SalesGroup2
( NAME = SGrp2Fi1_dat,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\SG2Fi1dt.ndf',
   SIZE = 10,
   MAXSIZE = 50,
   FILEGROWTH = 5 ),
( NAME = SGrp2Fi2_dat,
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\SG2Fi2dt.ndf',
   SIZE = 10,
   MAXSIZE = 50,
   FILEGROWTH = 5 )


LOG ON
( NAME = 'Sales_log1',
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\salelog1.ldf',
   SIZE = 5MB,
   MAXSIZE = 25MB,
   FILEGROWTH = 5MB ),
( NAME = 'Sales_log2',
   FILENAME = 'c:\program files\microsoft sql server\mssql\data\salelog2.ldf',
   SIZE = 5MB,
   MAXSIZE = 25MB,
   FILEGROWTH = 5MB )
GO


