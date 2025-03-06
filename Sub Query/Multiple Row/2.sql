
USE abc

SELECT * FROM emp WHERE dpt IN (SELECT dpt FROM emp WHERE eid=111)


SELECT * FROM emp WHERE sal > ANY (SELECT sal FROM emp WHERE dpt='it')
and dpt<>'it'

SELECT * FROM emp WHERE sal > ALL (SELECT sal FROM emp WHERE dpt='it')
and dpt<>'it'        -- ONE HEIGHER THAN ALL                   