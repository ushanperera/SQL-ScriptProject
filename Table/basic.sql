CREATE DATABASE students
USE students

CREATE TABLE marks(sid INT,subject VARCHAR(10),marks INT) --creating table

ALTER TABLE marks ADD grade char(2)

DROP TABLE marks

INSERT INTO marks VALUES(111,'english',95,'A+')

EXEC sp_rename 'aaa', 'bbb'--Renaming a table name

/*SELECT * from marks

UPDATE marks SET sid='1111' WHERE sid='111'
DELETE FROM marks WHERE sid='1111'
ALTER TABLE marks DROP COLUMN grade*/

ALTER TABLE tablename RENAME COLUMN OldName TO NewName--works
ALTER TABLE marks MODIFY subject sss -- may not work


ALTER TABLE voucherH ADD CONSTRAINT conDflt DEFAULT 1 FOR Link -- add Constraint


--Renaming Column Name
EXEC sp_rename 
@objname= 'table_name.old_column_name', 
@newname = 'new_column_name', 
@objtype = 'COLUMN'



SELECT TOP 5 * FROM Employees

EXEC sp_help marks


-- -> VARCHAR data type is free the free space to the OS