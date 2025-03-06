USE Northwind
GO
DROP PROC OrderSummary
GO
CREATE PROCEDURE OrderSummary @MaxQuantity INT OUTPUT
AS
-- SELECT to return a result set summarizing employee sales.
	SELECT Ord.EmployeeID, SummSales = SUM(OrDet.UnitPrice * OrDet.Quantity)
	FROM Orders AS Ord
	     JOIN [Order Details] AS OrDet ON (Ord.OrderID = OrDet.OrderID)
	GROUP BY Ord.EmployeeID
	ORDER BY Ord.EmployeeID
-- SELECT to fill the output parameter with the maximum quantity from Order Details.
	SELECT @MaxQuantity = MAX(Quantity)
	FROM [Order Details]
-- Return the number of all items ordered.
	  RETURN (SELECT SUM(Quantity) FROM [Order Details])
	GO
-- Test the stored procedure.
-- DECLARE variables to hold the return code and output parameter.
-- Execute the procedure, which returns the result set from the first SELECT.
	DECLARE @OrderSum INT
	DECLARE @LargestOrder INT
	EXEC @OrderSum = OrderSummary @MaxQuantity = @LargestOrder OUTPUT




-- Use the return code and output parameter.
PRINT 'The size of the largest single order was: ' + CONVERT(CHAR(6), @LargestOrder)
PRINT 'The sum of the quantities ordered was: ' + CONVERT(CHAR(6), @OrderSum)

GO