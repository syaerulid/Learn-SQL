# How to Use Set Autocommit in SQL
USE FAZA;
SHOW TABLES;

SELECT *
FROM EMPLOYEES;

INSERT INTO EMPLOYEES VALUES(1,'Faza',3);
INSERT INTO EMPLOYEES VALUES(2,'Erul',2);
INSERT INTO EMPLOYEES VALUES(8,'Cholifah',5); # The data is stored after restarting the Workbench

SET AUTOCOMMIT = 0;
INSERT INTO EMPLOYEES VALUES(5,'Vina',3);
SELECT *
FROM EMPLOYEES; # The Data is not stored

SET AUTOCOMMIT = 1;
INSERT INTO EMPLOYEES VALUES(5,'Vina',3);
SELECT *
FROM EMPLOYEES; # The Data is Stored

# So if we want to use Temporary Data, we set Autocommit to 0, but don't forget to turn it back to 1 after using the data
