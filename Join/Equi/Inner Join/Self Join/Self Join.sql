
DROP TABLE Emp

CREATE TABlE Emp (EmpID int,EmpName varchar(8),MgrID int)

insert into Emp values(111,'aaa' ,'' )
insert into Emp values(222,'bbb' ,111)
insert into Emp values(333,'ccc' ,'' )
insert into Emp values(444,'ddd' ,333)




-- to select employee and his manager
-- -> manager and normal employee are in same table
SELECT E1.EmpName 'Manager' , E2.EmpName 'Employee'
FROM  Emp E1
 JOIN EMP E2 ON E1.EmpID=E2.MgrID
