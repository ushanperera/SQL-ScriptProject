
------------------------------------------------------------------------------------------------
CREATE TABLE cd( 
	titleID INT PRIMARY KEY,
	title VARCHAR(60)NOT NULL,
	[description] VARCHAR(400),
	rating VARCHAR(4) CHECK (rating IN ('g', 'pg', 'r', 'no17', 'nr')),
	category VARCHAR(20)CHECK (category IN ('Drama', 'Comody', 'Action', 'Child', 'Scifc','Documentry')),
	relDate datetime,
	no_of_cds int)




CREATE TABLE dvd( 
	titleID INT PRIMARY KEY,
	title VARCHAR(60)NOT NULL,
	[description] VARCHAR(400),
	rating VARCHAR(4) CHECK (rating IN ('g', 'pg', 'r', 'no17', 'nr')),
	category VARCHAR(20)CHECK (category IN ('Drama', 'Comody', 'Action', 'Child', 'Scifc','Documentry')),
	relDate datetime,
	duration int)