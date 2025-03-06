
CREATE LOGIN AAAA   WITH PASSWORD = '8fd'
USE tempdb
CREATE USER Abc FOR LOGIN AAAA

CREATE SCHEMA Accounts
  CREATE TABLE Vendors(VenderID INT IDENTITY,VendorName VARCHAR(20),VendorState VARCHAR(10))

CREATE ROLE AccMembers
GRANT INSERT,UPDATE ON Accounts.Vendors TO AccMembers

sp_addrolemember 'AccMembers', 'Abc'
sp_droprolemember 'AccMembers', 'Abc'


--sp_addrolemember [ @rolename = ] 'role',
--    [ @membername = ] 'security_account'



EXEC sp_helprole
EXEC sp_helprole AccMembers

