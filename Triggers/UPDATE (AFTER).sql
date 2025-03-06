
CREATE TABLE Vendors( VenderID INT IDENTITY,
		      VendorName VARCHAR(20),
		      VendorState VARCHAR(10))

INSERT Vendors VALUES( 'aa','aaa')

-- Count when deleting
CREATE TRIGGER Vendors_Update
ON Vendors
AFTER UPDATE 
AS
IF UPDATE(VENDORSTATE)
     BEGIN
       RAISERROR ('You Cant Change Vendor State ',16,1)
       ROLLBACK TRANSACTION
     END

UPDATE Vendors SET VendorState='bbb' WHERE VendorState='aaa'

DROP TRIGGER Vendors_Update
DROP TABLE Vendors
SELECT * FROM Vendors