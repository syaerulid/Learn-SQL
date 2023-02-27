# Inserting The Data into the tables
USE FAZA;
SHOW TABLES;
# DESCRIBE THE TABLE FIRST
DESCRIBE EMPLOYEES;
# After that Insert the data into the Table
INSERT INTO EMPLOYEES VALUES(1, 'Syaerul',2);
# Checking if data already inserted or not
SELECT * 
FROM employees;
# Insert Again
INSERT INTO EMPLOYEES VALUES(2, 'Faza',5);
# If we only want to insert to 2 column Values
INSERT INTO EMPLOYEES(ID,NAME) VALUES(3,'Alice')
