
USE abc

-- SELECT dpt,sal   		--WRONG
SELECT dpt,MAX(sal)
FROM emp 
GROUP BY(dpt)
HAVING MIN(sal)>(SELECT MIN(sal) FROM emp WHERE dpt='it')