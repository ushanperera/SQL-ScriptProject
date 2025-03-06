
CREATE TABLE Vendors(VenderID INT NOT NULL PRIMARY KEY,
		     VendorName VARCHAR(20),
  		     VendorAddr VARCHAR(20),
		     VendorCity VARCHAR(20),
		     VendorState VARCHAR(10))


CREATE TABLE Invoices( InvoiceID INT NOT NULL PRIMARY KEY,
		       VenderID INT REFERENCES Vendors(VenderID),
		       InvoiceDue DATETIME ,
		       InvoiceTotal MONEY,
		       CreditTotal MONEY,
		       PaymentTotal MONEY,
		       InvoiceDueDate DATETIME,
		       PaymentDate DATETIME )


CREATE FUNCTION fn_topVendorsDue(@CutOff Money = 0)
RETURNS TABLE
RETURN (SELECT VendorName,SUM(InvoiceTotal) AS TotalDue
        FROM Vendors V JOIN Invoices I ON V.VenderID=I.VenderID
        WHERE InvoiceTotal-CreditTotal-PaymentTotal > 0
	GROUP BY VendorName
	HAVING SUM(InvoiceTotal)>=@CutOff )


SELECT * FROM dbo.fn_topVendorsDue(5000) -- to Call


SELECT Vendors.VendorName,VendorCity
FROM Vendors Join dbo.fn_topVendorsDue(Default)AS TopVendors  -- Join Table Result With Function Result
On Vendors.VendorName = TopVendors.VendorName  -- Call to function
	





-- To Alter
ALTER FUNCTION fn_topVendorsDue(@CutOff Money = 0)
RETURNS TABLE
RETURN (SELECT VendorName,SUM(InvoiceTotal) AS TotalDue
        FROM Vendors V JOIN Invoices I ON V.VenderID=I.VenderID
        WHERE InvoiceTotal-CreditTotal-PaymentTotal > 0
	GROUP BY VendorName
	HAVING SUM(InvoiceTotal)>=@CutOff )	

--To Drop
DROP FUNCTION dbo.fn_topVendorsDue				