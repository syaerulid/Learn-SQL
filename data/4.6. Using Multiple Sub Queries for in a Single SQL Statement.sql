# Type of Integrity Constraints in SQL
/*
Not Null
Unique
Primary Key
Foreign Key
Check 
Default 
*/
-- Not Null Integrity Constraints in SQL
-- The Column Specified with Not Null Should not accept Null Values
# Example
USE FAZA;
CREATE TABLE EMP(ID INT NOT NULL, NAME VARCHAR(15), EXPERIENCE INT);

SELECT *
FROM EMP;

INSERT INTO EMP VALUES(1,'Faza',10);
INSERT INTO EMP(ID,NAME) VALUES(2, 'Erul');
INSERT INTO EMP(NAME, EXPERIENCE) VALUES ('Syaerul',5); #This will produce Error because ID Values should be not null