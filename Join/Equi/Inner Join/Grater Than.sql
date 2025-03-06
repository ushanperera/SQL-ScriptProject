
USE Northwind


SELECT DISTINCT C.Categoryid,C.CategoryName
FROM Categories C INNER JOIN Products P
	ON C.Categoryid > P.Categoryid
WHERE P.UnitPrice = 10
ORDER BY C.CategoryName