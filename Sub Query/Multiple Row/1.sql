
USE abc

SELECT * FROM emp WHERE dpt = (SELECT dpt FROM emp WHERE eid=111)
                   AND    
               --  OR	
                        sal > (SELECT sal FROM emp WHERE sal=100)
               --  AND   dpt = (SELECT dpt FROM emp WHERE dpt='it') --WRONG