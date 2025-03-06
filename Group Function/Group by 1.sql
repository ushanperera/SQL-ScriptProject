USE abc


SELECT dpt,SUM(sal)
FROM emp
GROUP BY dpt --if this row removes SUM can't be calculated
                  -->also We cant use Where clause with Group By Clause