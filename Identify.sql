
CREATE TABLE T1 ( column_1 INT IDENTITY, column_2 VARCHAR(30))

INSERT T1 VALUES ('Row #1')
INSERT T1 (column_2) VALUES ('Row #2')


SET IDENTITY_INSERT T1 ON --can't Set Wihout this statement
INSERT INTO T1 (column_1,column_2) VALUES (-99,'Explicit identity value')


SELECT * FROM T1
