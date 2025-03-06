
CREATE SCHEMA Market
  CREATE TABLE Vendors(VenderID INT IDENTITY,VendorName VARCHAR(20),VendorState VARCHAR(10))
  CREATE TABLE Invoice(InvoiceID INT IDENTITY,InvoiceState VARCHAR(10))


CREATE LOGIN AAAA   WITH PASSWORD = '8fd'
USE tempdb
CREATE USER Abc FOR LOGIN AAAA
drop USER Abc

GRANT SELECT ON  Market.Vendors TO ABC   -- Allove
REVOKE SELECT ON  Market.Vendors TO ABC  -- Remove
DENY SELECT ON  Market.Vendors TO ABC    -- Not Giving

GRANT SELECT ON  Market.Vendors TO ABC WITH GRANT OPTION

-- Permision for each user
GRANT SELECT,INSERT,UPDATE,REFERENCES,ALTER ON  Market.Vendors TO ABC
GRANT ALL ON  Market.Vendors TO ABC

-- Allow schema to abc User
GRANT UPDATE ON SCHEMA :: Market TO Abc

-- Database Permisions ( giving permisions to not existing / not created objects)
GRANT CREATE TABLE TO Melani
   -- CREATE DATABASE
   -- CREATE VIEW
   -- CREATE PROCEDURE
   -- CREATE FUNCTION
   -- CREATE SCHEMA




drop table Market.Vendors
drop SCHEMA Market

-- Aditional
GRANT CREATE VIEW TO CarmineEs WITH GRANT OPTION
CREATE USER Lolan FOR LOGIN [Edmonds\LolanSo];