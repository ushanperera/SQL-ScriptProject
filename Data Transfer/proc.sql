

CREATE  PROCEDURE master_file_i.mst_ins_employ
(@pretval numeric(2, 0) OUTPUT,

pEmployeeID  varchar(20),
pEPFNo  varchar(20),
pFirstName  varchar(50),
pLastName  varchar(50),
pFullName  varchar(150),
psex  varchar(20),
pAddress  varchar(150),
pTelephone  varchar(20)

)
WITH 
EXECUTE AS CALLER
AS
BEGIN TRY
DECLARE
--Delarations
@key nvarchar(1),
@v_Rid varchar(20),
@v_roleID varchar(20),
@hDoc int,
@cnt int;
BEGIN TRANSACTION
set @key='1';
set @cnt=0;
BEGIN
--insert data in temppory table
 begin
   if @Prole_id is null
    begin 
      select @cnt=count(*) from app.Employee where EmployeeID=@PEmployeeID-- and AppCode=@pAppCode
      if @cnt=0
       begin         
        exec [app].[sp_sys_parameter_process] @doc_key='APP-EmpMst', @nexrKey=@v_Rid OUTPUT;
        print @v_Rid;


INSERT INTO [app].[Employee]
           ([LoggedUserID]
		   ,[RecDate]
		   ,[UpdUser]
		   ,[UpdDate]
           ,[EmployeeID]
           ,[EPFNo]
           ,[FirstName]
           ,[LastName]
           ,[FullName]
           ,[sex]
           ,[Address]
           ,[Telephone])
     VALUES(system_user
,getdate()
,system_user
,getdate()
,pEmployeeID
,pEPFNo  
,pFirstName  
,pLastName  
,pFullName  
,psex  
,pAddress 
,pTelephone)










 (set 	   












       --set @v_roleID=@v_Rid ;
       end
    end
    else
    begin
     select @cnt=count(*) from app.Employee  where EmployeeID=@pEmployeeID
     
      if @cnt>0
       begin         
        update  app.Employee  set 
			,[RecDate]=getdate()
		   ,[UpdUser]=system_user
           ,[EmployeeID]=@pEmployeeID
           ,[EPFNo]=@pEPFNo
           ,[FirstName]=@pFirstName
           ,[LastName]=@pLastName
           ,[FullName]=@pFullName
           ,[sex]=@psex
           ,[Address]=@pAddress
           ,[Telephone]=@pTelephone

        where EmployeeID=@pEmployeeID
       
       set @v_roleID=@Prole_id ;
       end
       
    end
  
 
 
end
set @pretval=1;
commit transaction
END
END TRY
begin catch
set @pretval=3;
rollback transaction;
exec system.sp_dev_ERROR_REPORT @Key;
end catch
