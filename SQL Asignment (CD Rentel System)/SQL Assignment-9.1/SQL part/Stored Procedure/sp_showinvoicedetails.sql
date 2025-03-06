CREATE PROC sp_showinvoicedetails
@InvoiceNo Varchar(10)
As
BEGIN
IF EXISTS (SELECT * FROM Invoice WHERE  InvoiceNo=@InvoiceNo)
BEGIN
PRINT ' Invoice Details'
RETURN 0
END
ELSE
  PRINT 'NO Records Found For Given  Invoice Number'
RETURN 1
END

EXEC sp_showinvoicedetails @InvoiceNo="1234"





