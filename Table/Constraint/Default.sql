
CREATE TABlE T1 (EmpID int,EmpName varchar(8),MgrID int)

drop table t1

USE Northwind

ALTER TABLE T1
ADD CONSTRAINT MgrID DEFAULT '1111' FOR EmpName -- if table contains data,not possible


INSERT INTO T1 DEFAULT VALUES 

select * from t1
