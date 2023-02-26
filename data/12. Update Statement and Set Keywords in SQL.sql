# Update Statement along with Set Keyword 
# For updating the table Records
USE FAZA;
SELECT *
FROM EMPLOYEES;

INSERT INTO EMPLOYEES VALUES(1,'Faza',2);
INSERT INTO EMPLOYEES VALUES(2,'Erul',5);
INSERT INTO EMPLOYEES VALUES(3, 'Syaerul', 7);

# Using Update Statement
UPDATE EMPLOYEES 
SET NAME = 'Cholifah' 
WHERE ID = 1; # Simple Update Statement

UPDATE EMPLOYEES
SET ID = 4, NAME = 'Turizah'
WHERE EXPERIENCE = 7;

UPDATE EMPLOYEES 
SET NAME = 'Cholifah'; # This one will rename all the name column to Cholifah