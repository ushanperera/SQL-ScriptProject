
USE pubs
SELECT au_fname, au_lname, pub_name
FROM authors CROSS JOIN publishers 
ORDER BY au_lname DESC



USE pubs
SELECT au_fname, au_lname, pub_name
FROM authors CROSS JOIN publishers 
WHERE authors.city = publishers.city
ORDER BY au_lname DESC
