EXEC master.dbo.sp_addlinkedserver @server = N'USHAN', @srvproduct=N'SQL Server'

exec sp_addlinkedsrvlogin 'USHAN'
    , 'FALSE', NULL, 'sa', '123';


SELECT * FROM USHAN.[GLITZ].[dbo].EMP_M

insert into [USHAN\SERVER2005].testDB.dbo.test1 select vEmpID  FROM USHAN.[GLITZ].[dbo].EMP_M

SELECT * FROM OPENQUERY( USHAN, 'SELECT * FROM USHAN.[GLITZ].[dbo].EMP_M') Order By vEmpID


sp_dropserver USHAN