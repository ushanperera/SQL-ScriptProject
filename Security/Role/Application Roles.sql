

CREATE APPLICATION ROLE Physicion WITH PASSWORD = '123' -- [, DEFAULT_SCHEMA = Sales]
GRANT SELECT ON Accounts.Vendors TO Physicion

EXEC sp_setapprole Physicion,123



--sp_setapprole [ @rolename = ] 'role',
--        [ @password = ] { encrypt N'password' } 
