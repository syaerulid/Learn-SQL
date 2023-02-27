# Commit 
# Set Autocommit = 0;
# Commit won't happen in automatic way
# The changes you make to the table will become Temporary

USE FAZA;

SHOW TABLES;
SELECT *
FROM EMPLOYEES;

SET AUTOCOMMIT = 0;

INSERT INTO EMPLOYEES VALUES(7,'Milla',10); # Data not recorded
COMMIT; #data recorded because of commit
