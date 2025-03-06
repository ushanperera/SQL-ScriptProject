
CREATE TABLE Vendors(VenderID INT IDENTITY,VendorName VARCHAR(20),VendorState VARCHAR(10))

INSERT Vendors VALUES( 'aa','aaa')

-- when inserting it converts to Uppercase
CREATE TRIGGER Vendors_Insert_update
ON Vendors
AFTER INSERT ,UPDATE 
AS
 UPDATE Vendors SET VendorState=UPPER (VendorState)
  WHERE VenderID IN (SELECT VenderID FROM INSERTED)  -- Inserted is last inserted (system)table





DROP TRIGGER Vendors_Insert_update
DROP TABLE Vendors
SELECT * FROM Vendors