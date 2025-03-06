

USE pubs

SELECT a.au_fname, a.au_lname, p.pub_name
FROM authors AS a RIGHT OUTER JOIN publishers AS p
   ON a.city = p.city
ORDER BY p.pub_name ASC, a.au_lname ASC, a.au_fname ASC



USE pubs
SELECT s.stor_id, s.qty, t.title
FROM sales s RIGHT OUTER JOIN titles t
   ON s.title_id = t.title_id
   AND s.qty > 50
ORDER BY s.stor_id ASC

