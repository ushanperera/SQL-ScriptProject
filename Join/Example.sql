
USE Northwind


SELECT P.ProductID,S.SupplierID,S.CompanyName --Using table name is not importamt need only Conflits
FROM Suppliers S JOIN Products P
     ON (S.SupplierID = P.SupplierID)
WHERE UnitPrice > $10  AND CompanyName LIKE N'F%' --  %-any
GO
