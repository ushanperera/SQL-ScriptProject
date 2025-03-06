

CREATE VIEW title_avail
  AS 
	SELECT title,ststus
	FROM title t JOIN fileCopy c
	ON t.titleID=c.titleID
	ORDER BY title