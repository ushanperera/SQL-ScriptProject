
--sp_addsrvrolemember [ @loginame= ] 'login' 
--				     ,[ @rolename = ] 'role' 


CREATE LOGIN AAAA   WITH PASSWORD = '8fd'
USE tempdb
CREATE USER Abc FOR LOGIN AAAA

EXEC sp_addsrvrolemember Abc,SYSADMIN
EXEC sp_dropsrvrolemember Abc,SYSADMIN


-- More Roles
/*
sysadmin 
securityadmin 
serveradmin 
setupadmin 
processadmin 
diskadmin 
dbcreator 
bulkadmin */







