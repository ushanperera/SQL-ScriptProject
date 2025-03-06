
CREATE TABLE Vendors( VenderID INT IDENTITY,
		      VendorName VARCHAR(20),
		      VendorState VARCHAR(10))

INSERT Vendors VALUES( 'aa','aaa')

-- Count when deleting
CREATE TRIGGER Vendors_delete
ON Vendors
AFTER DELETE 
AS
IF(SELECT COUNT(*) FROM DELETED) > 1    -- deleted is last deleted (system)table
     BEGIN
	RAISERROR ('You Cant Delete More Than One Record at a time',16,1)
        ROLLBACK TRANSACTION
     END

	
DELETE FROM Vendors WHERE VendorName='aa'

DROP TRIGGER Vendors_delete
DROP TABLE Vendors
SELECT * FROM Vendors