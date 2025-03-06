
SELECT 'ANSI' AS Region ,
CONVERT (varchar(30),GETDATE(),102) AS Style


UNION SELECT 'Europiean' ,
CONVERT (varchar(30),GETDATE(),113) --AS Style

UNION SELECT 'Japanese' ,
CONVERT (varchar(30),GETDATE(),111)