
IF EXISTS(SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
      WHERE TABLE_NAME = 'T1')
   DROP TABLE T1
GO
CREATE TABLE T1 
( column_1 int identity, 
  column_2 varchar(30) CONSTRAINT default_name DEFAULT ('column default'),
  column_3 int NULL,
  column_4 varchar(40)
)
INSERT INTO T1 (column_4) VALUES ('Explicit value')
INSERT INTO T1 (column_2,column_4)  VALUES ('Explicit value', 'Explicit value')
INSERT INTO T1 (column_2,column_3,column_4) VALUES ('Explicit value',-44,'Explicit value')

SELECT * FROM T1
