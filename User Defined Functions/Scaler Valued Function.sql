Use abc

CREATE FUNCTION fn_empID(@empName varchar(50))
RETURNS int 
AS
 BEGIN
   RETURN(SELECT eid FROM emp WHERE ename=@empName)
 END


SELECT dpt,sal
FROM emp
WHERE eid=dbo.fn_empID('Chamera')