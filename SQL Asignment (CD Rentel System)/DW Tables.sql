create database sales_fact
use sales_fact
drop database sales_fact

create table time_dimension ( time_id int primary key,[year] int,[month] varchar(10))
create table branch_dimension ( branch_id int primary key, branch_name varchar(10))
create table product_dimension ( prod_id int primary key , prod_name varchar(10), prod_grp varchar(10) , unit_price int)
create table cus_grp_dimension ( cus_grp_id int primary key , grp_disc varchar(10))

drop table sales_fact
create table sales_fact ( 
		time_id int FOREIGN KEY REFERENCES dbo.time_dimension(time_id) ON UPDATE CASCADE,
		branch_id int FOREIGN KEY REFERENCES dbo.branch_dimension(branch_id) ON UPDATE CASCADE,
		prod_id int FOREIGN KEY REFERENCES dbo.product_dimension(prod_id) ON UPDATE CASCADE, 
		cus_grp_id int FOREIGN KEY REFERENCES dbo.cus_grp_dimension(cus_grp_id) ON UPDATE CASCADE, 
		qty int,
		tot_val int )

insert into time_dimension  values (1,2008,'jan')


select * from sales_fact





create table time_dimension_2 ( time_id int primary key,[year] int)

create table cus_grp_dimension_  cus_grp_id int primary key , grp_disc varchar(10))