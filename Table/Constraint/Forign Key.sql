
USE Northwind
ALTER TABLE dbo.orders
ADD CONSTRAINT F_K_Orders
FOREIGN KEY(CustomerID) REFERENCES dbo.Customers(CustomerID)