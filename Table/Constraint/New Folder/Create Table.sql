
A. Use PRIMARY KEY constraints
This example shows the column definition for a PRIMARY KEY constraint with a clustered index on the job_id column of the jobs table (allowing the system to supply the constraint name) in the pubs sample database.

job_id   smallint
      PRIMARY KEY CLUSTERED

This example shows how a name can be supplied for the PRIMARY KEY constraint. This constraint is used on the emp_id column of the employee table. This column is based on a user-defined data type.

emp_id   empid
      CONSTRAINT PK_emp_id PRIMARY KEY NONCLUSTERED




B. Use FOREIGN KEY constraints
A FOREIGN KEY constraint is used to reference another table. Foreign keys can be single-column keys or multicolumn keys. This example shows a single-column FOREIGN KEY constraint on the employee table that references the jobs table. Only the REFERENCES clause is required for a single-column FOREIGN KEY constraint.

job_id   smallint      NOT NULL
      DEFAULT 1
      REFERENCES jobs(job_id)

You can also explicitly use the FOREIGN KEY clause and restate the column attribute. Note that the column name does not have to be the same in both tables.

FOREIGN KEY (job_id) REFERENCES jobs(job_id)

Multicolumn key constraints are created as table constraints. In the pubs database, the sales table includes a multicolumn PRIMARY KEY. This example shows how to reference this key from another table; an explicit constraint name is optional.

CONSTRAINT FK_sales_backorder FOREIGN KEY (stor_id, ord_num, title_id)
   REFERENCES sales (stor_id, ord_num, title_id)





C. Use UNIQUE constraints
UNIQUE constraints are used to enforce uniqueness on nonprimary key columns. A PRIMARY KEY constraint column includes a restriction for uniqueness automatically; however, a UNIQUE constraint can allow null values. This example shows a column called pseudonym on the authors table. It enforces a restriction that authors pen names must be unique.

pseudonym varchar(30)   NULL
UNIQUE NONCLUSTERED

This example shows a UNIQUE constraint created on the stor_name and city columns of the stores table, where the stor_id is actually the PRIMARY KEY; no two stores in the same city should be the same.

CONSTRAINT U_store UNIQUE NONCLUSTERED (stor_name, city)





D. Use DEFAULT definitions
Defaults supply a value (with the INSERT and UPDATE statements) when no value is supplied. In the pubs database, many DEFAULT definitions are used to ensure that valid data or placeholders are entered.

On the jobs table, a character string default supplies a description (column job_desc) when the actual description is not entered explicitly.

DEFAULT 'New Position - title not formalized yet'

In the employee table, the employees can be employed by an imprint company or by the parent company. When an explicit company is not supplied, the parent company is entered (note that, as shown here, comments can be nested within the table definition).

DEFAULT ('9952')
/* By default the Parent Company Publisher is the company
to whom each employee reports. */

In addition to constants, DEFAULT definitions can include functions. Use this example to get the current date for an entry:

DEFAULT (getdate())

Niladic-functions can also improve data integrity. To keep track of the user who inserted a row, use the niladic-function for USER (do not surround the niladic-functions with parentheses):

DEFAULT USER





E. Use CHECK constraints
This example shows restrictions made to the values entered into the min_lvl and max_lvl columns of the jobs table. Both of these constraints are unnamed:

CHECK (min_lvl >= 10)

and

CHECK (max_lvl <= 250)

This example shows a named constraint with a pattern restriction on the character data entered into the emp_id column of the employee table.

CONSTRAINT CK_emp_id CHECK (emp_id LIKE 
   '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' OR
   emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]')

This example specifies that the pub_id must be within a specific list or follow a given pattern. This constraint is for the pub_id of the publishers table.

CHECK (pub_id IN ('1389', '0736', '0877', '1622', '1756')
   OR pub_id LIKE '99[0-9][0-9]')





F. Complete table definitions
This example shows complete table definitions with all constraint definitions for three tables (jobs, employee, and publishers) created in the pubs database.

/* ************************** jobs table ************************** */
CREATE TABLE jobs
(
   job_id  smallint
      IDENTITY(1,1)
      PRIMARY KEY CLUSTERED,
   job_desc        varchar(50)     NOT NULL
      DEFAULT 'New Position - title not formalized yet',
   min_lvl tinyint NOT NULL
      CHECK (min_lvl >= 10),
   max_lvl tinyint NOT NULL
      CHECK (max_lvl <= 250)
)

/* ************************* employee table ************************* */
CREATE TABLE employee 
(
   emp_id  empid
      CONSTRAINT PK_emp_id PRIMARY KEY NONCLUSTERED
      CONSTRAINT CK_emp_id CHECK (emp_id LIKE 
         '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' or
         emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),
      /* Each employee ID consists of three characters that 
      represent the employee's initials, followed by a five 
      digit number ranging from 10000 through 99999 and then the 
      employee's gender (M or F). A (hyphen) - is acceptable 
      for the middle initial. */
   fname   varchar(20)     NOT NULL,
   minit   char(1) NULL,
   lname   varchar(30)     NOT NULL,
   job_id  smallint        NOT NULL
      DEFAULT 1
      /* Entry job_id for new hires. */
      REFERENCES jobs(job_id),
   job_lvl tinyint
      DEFAULT 10,
      /* Entry job_lvl for new hires. */
   pub_id  char(4) NOT NULL
      DEFAULT ('9952')
      REFERENCES publishers(pub_id),
      /* By default, the Parent Company Publisher is the company
      to whom each employee reports. */
   hire_date       datetime        NOT NULL
      DEFAULT (getdate())
      /* By default, the current system date is entered. */
)

/* ***************** publishers table ******************** */
CREATE TABLE publishers
(
   pub_id  char(4) NOT NULL 
         CONSTRAINT UPKCL_pubind PRIMARY KEY CLUSTERED
         CHECK (pub_id IN ('1389', '0736', '0877', '1622', '1756')
            OR pub_id LIKE '99[0-9][0-9]'),
   pub_name      varchar(40)     NULL,
   city         varchar(20)     NULL,
   state      char(2) NULL,
   country      varchar(30)     NULL
            DEFAULT('USA')
)






G. Use the uniqueidentifier data type in a column
This example creates a table with a uniqueidentifier column. It uses a PRIMARY KEY constraint to protect the table against users inserting duplicated values, and it uses the NEWID() function in the DEFAULT constraint to provide values for new rows.

CREATE TABLE Globally_Unique_Data
(guid uniqueidentifier 
   CONSTRAINT Guid_Default 
   DEFAULT NEWID(),
Employee_Name varchar(60),
CONSTRAINT Guid_PK PRIMARY KEY (Guid)
)





H. Use an expression for a computed column
This example illustrates the use of an expression ((low + high)/2) for calculating the myavg computed column.

CREATE TABLE mytable 
   (
    low int,
    high int,
    myavg AS (low + high)/2
   )






I. Use the USER_NAME function for a computed column
This example uses the USER_NAME function in the myuser_name column.

CREATE TABLE mylogintable
   ( 
    date_in datetime,
    user_id int,
    myuser_name AS USER_NAME()
   )





J. Use NOT FOR REPLICATION
This example shows using the IDENTITY property on a table subscribed to a replication. The table includes a CHECK constraint to ensure that the SaleID values generated on this system do not grow into the range assigned to the replication Publisher.

CREATE TABLE Sales
   (SaleID INT IDENTITY(100000,1) NOT FOR REPLICATION,
             CHECK NOT FOR REPLICATION (SaleID <= 199999),
    SalesRegion CHAR(2),
   CONSTRAINT ID_PK PRIMARY KEY (SaleID)
   )

