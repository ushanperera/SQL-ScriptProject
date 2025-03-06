
SELECT * FROM emp 
  WHERE sal > (SELECT sal FROM emp WHERE ename='Sunomal')--Sub Query Returns One Result

--Only we can use '=' operator in Sub query
--Also Can Use > , >= , = <= , < , <> in Main Query
-- <> is used to not eqal function
---------------------------------------------------------------------
select eid,ename,dpt,sal
from emp
where sal=(select min(sal) from emp)
---------------------------------------------------------------------
SELECT dpt,MAX(sal)
FROM emp 
GROUP BY(dpt)
HAVING MIN(sal)>(SELECT MIN(sal) FROM emp WHERE dpt='it')
