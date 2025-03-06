
--Keep uniquness as PK and allow null values

USE Northwind
ALTER TABLE dbo.suppliers
ADD CONSTRAINT U_C_Name UNIQUE NONCLUSTERED(companyName)