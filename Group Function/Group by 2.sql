USE abc

SELECT dpt,SUM(sal)    
FROM emp
WHERE ename LIKE '%%'
GROUP BY dpt
HAVING SUM(sal) > 1     
ORDER BY  SUM(sal)  DESC   --  [ ORDER BY order_expression [ ASC | DESC ] ] 