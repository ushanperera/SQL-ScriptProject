
USE Northwind


SELECT DISTINCT P1.ProductName,P1.UnitPrice,P1.SupplierID
FROM Products P1 INNER JOIN Products P2 
	ON P1.UnitPrice <> P2.UnitPrice
WHERE P1.UnitPrice < 20  AND  P2.UnitPrice < 20
ORDER BY P1.SupplierID