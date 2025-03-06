SELECT * FROM OPENQUERY( USHAN, 'SELECT * FROM USHAN.[GLITZ].[dbo].EMP_M') Order By vEmpID

UPDATE OPENQUERY (OracleSvr, 'SELECT name FROM joe.titles WHERE id = 101') 
SET name = 'ADifferentName';

INSERT OPENQUERY (OracleSvr, 'SELECT name FROM joe.titles')
VALUES ('NewTitle');

DELETE OPENQUERY (OracleSvr, 'SELECT name FROM joe.titles WHERE name = ''NewTitle''');
