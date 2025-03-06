
--                     SQL Server Authentication               --

/*Create Login ID & password*/

EXEC sp_addlogin 'Chaminda'
EXEC sp_addlogin 'Chaminda', 'nibm1', 'HOTEL_RES'
EXEC sp_droplogin 'Chaminda'


EXEC sp_addlogin 'Udara'
EXEC sp_addlogin 'Udara', 'nibm2', 'HOTEL_RES'
EXEC sp_droplogin 'Udara'


EXEC sp_addlogin 'Chaluka'
EXEC sp_addlogin 'Chaluka', 'nibm3', 'HOTEL_RES'
EXEC sp_droplogin 'Chaluka'


EXEC sp_addlogin 'Lakmal'
EXEC sp_addlogin 'Lakmal', 'nibm4', 'HOTEL_RES'
EXEC sp_droplogin 'Lakmal'

/* Create sp_addrolemember */

EXEC sp_addrolemember 'Hotalmanager', 'Member1'
EXEC sp_addrolemember 'Reception', 'Member2'
EXEC sp_addrolemember 'Chife', 'Member2'

/* Create sp_addsrvrolemember/sysadmin */

EXEC sp_addsrvrolemember 'Udara', 'sysadmin'
EXEC sp_addsrvrolemember 'Chaluka', 'sysadmin'
EXEC sp_addsrvrolemember 'Lakmal', 'sysadmin'


/* Create sp_addsrvrolemember/securityadmin */

EXEC sp_addsrvrolemember 'Udara', 'securityadmin'
EXEC sp_addsrvrolemember 'Chaluka', 'securityadmin'
EXEC sp_addsrvrolemember 'Lakmal', 'securityadmin'


/* Create sp_addsrvrolemember/serveradmin */

EXEC sp_addsrvrolemember 'Udara', 'serveradmin'
EXEC sp_addsrvrolemember 'Chaluka', 'serveradmin'
EXEC sp_addsrvrolemember 'Lakmal', 'serveradmin'


/* Create  sp_dropsrvrolemember/serveradmin */

EXEC  sp_dropsrvrolemember 'Udara', 'sysadmin'
EXEC  sp_dropsrvrolemember 'Chaluka', 'sysadmin'
EXEC  sp_dropsrvrolemember 'Lakmal', 'sysadmin'



/* Create sp_dropsrvrolemember/securityadmin */

EXEC  sp_dropsrvrolemember 'Udara', 'securityadmin'
EXEC  sp_dropsrvrolemember 'Chaluka', 'securityadmin'
EXEC  sp_dropsrvrolemember 'Lakmal', 'securityadmin'

/* Create sp_grantdbaccess */

EXEC sp_grantdbaccess 'Udara', 'Hotalmanager'
EXEC sp_grantdbaccess 'Chaluka', 'Reception'
EXEC sp_grantdbaccess 'Lakmal', 'Chife'


/* Create sp_revokedbaccess */

EXEC sp_revokedbaccess 'Hotalmanager'
EXEC sp_revokedbaccess 'Reception'
EXEC sp_revokedbaccess 'Chife'


/* Create sp_addgroup */

EXEC sp_addgroup 'sysadmin'
EXEC sp_addgroup 'securityadmin'
EXEC sp_addgroup 'serveradmin'

/* Grant statement permissions */

GRANT CREATE DATABASE, CREATE TABLE
TO Udara

GRANT CREATE TABLE TO sysadmin

DENY CREATE DATABASE, CREATE TABLE
TO Hotalmanager, Reception, Chife

REVOKE CREATE TABLE, CREATE DEFAULT
FROM Mary, John



