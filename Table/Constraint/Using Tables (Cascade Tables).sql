
USE abc
CREATE TABlE invoice (inv_ID int,user_ID varchar(8),tot_amt int)

CREATE TABLE vendor (ven_id int,v_name varchar(10))



drop table invoice



CREATE TABlE invoice (ven_id int NOT NULL REFERENCES vendor(ven_id) ON UPDATE CASCADE,
user_ID varchar(8),tot_amt int)




CREATE TABlE Employee (EmpID int,EmpName varchar(8),MgrID int)