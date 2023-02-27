# Alter Statement, Add, Modify Column, Rename and Drop Column Keywords
USE FAZA;

SHOW TABLES;
DESCRIBE EMPLOYEES;

ALTER TABLE EMPLOYEES 
ADD LOCATION VARCHAR(15); # This will add new Column in Employees Table Called Location

ALTER TABLE EMPLOYEES
MODIFY COLUMN LOCATION INT; # This will change the types of Location column from Varchar to INT

ALTER TABLE EMPLOYEES
RENAME COLUMN LOCATION TO loc; # This will rename Column Name

ALTER TABLE EMPLOYEES
DROP COLUMN loc; # This will drop loc Column from Employees Table
