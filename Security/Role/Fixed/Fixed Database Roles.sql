
-- sp_addrolemember [ @rolename = ] 'role',
--					[ @membername = ] 'security_account'

CREATE LOGIN AAAA   WITH PASSWORD = '8fd'
USE tempdb
CREATE USER Abc FOR LOGIN AAAA

-- Adding a database user
EXEC sp_addrolemember 'db_owner', 'Abc'
EXEC sp_droprolemember 'db_owner', 'Abc'

-- More Roles
/*
db_owner
db_accessadmin
db_securityadmin
db_ddladmin */







-- Additional
-- Adding a Windows login
EXEC sp_grantdbaccess 'Sammamish\SandeepK', 'Sandeep'
EXEC sp_addrolemember 'Production', 'Sandeep'

-- Adding a database user
EXEC sp_addrolemember 'Production', 'Mindaugas'
EXEC sp_droprolemember 'Production', 'Mindaugas'

