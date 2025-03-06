
USE Northwind

SELECT C.Categoryid,C.CategoryName,P.ProductID,P.ProductName,P.UnitPrice
FROM Categories C INNER JOIN Products P
	ON C.Categoryid = P.Categoryid
WHERE P.UnitPrice = 10
ORDER BY C.CategoryName,P.ProductName





   

-- 2


USE pubs

go

SELECT 'PROCEDURE', authors.au_id, authors.au_lname, 
      SUM(titles.price * sales.qty) 
   FROM authors INNER JOIN titleauthor 
      ON authors.au_id = titleauthor.au_id INNER JOIN titles
      ON titleauthor.title_id = titles.title_id INNER JOIN sales
      ON titles.title_id = sales.title_id
   WHERE authors.au_id like '8%'
   GROUP BY authors.au_id, authors.au_lname