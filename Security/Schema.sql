
CREATE SCHEMA Accounting

CREATE SCHEMA Market
	CREATE TABLE Vendors(VenderID INT IDENTITY,VendorName VARCHAR(20),VendorState VARCHAR(10))


SELECT * FROM Market.Vendors



-- Tramsfer Objects from Schema to Schema
ALTER SCHEMA Accounting transfer Market.Vendors
SELECT * FROM Accounting.Vendors

-- when droping need to drop objects first
DROP SCHEMA Accounting
DROP SCHEMA Vendors
DROP TABLE Accounting.Vendors
DROP TABLE Market.Vendors