-- Create a view from the authors table that contains all authors.
CREATE VIEW All_authors (au_fname, au_lname, address, city, zip)
AS 
 SELECT au_fname, au_lname, address, city, zip
 FROM pubs..authors

GRANT SELECT ON All_authors TO public-- Grant SELECT permissions on the view to public.

-- The view needs to be changed to include all authors 
-- from Utah.
-- If ALTER VIEW is not used but instead the view is dropped and 
-- re-created, the above GRANT statement and any other statements 
-- dealing with permissions that pertain to this view 
-- must be re-entered.

ALTER VIEW All_authors (fname, lname, addr, cty, zip)
AS 
 SELECT au_fname, au_lname, address, city, zip
 FROM pubs..authors
 WHERE state = 'UT'
GO
