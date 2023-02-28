# Unique Integrity Constraint
USE FAZA;

CREATE TABLE EMP(ID INT UNIQUE,NAME VARCHAR(15),EXPERIENCE INT);

SELECT *
FROM EMP;

INSERT INTO EMP VALUES (1,'Syaerul',5);
INSERT INTO EMP VALUES (3, 'Faza', 4);
INSERT INTO EMP VALUES (1,'Cholifah',3); # This one will not be displayed because ID is same with Syaerul

CREATE TABLE IRUL(ID INT, NAME VARCHAR(15), EXPERIENCE INT, UNIQUE(ID,NAME));

SELECT *
FROM IRUL;

INSERT INTO IRUL VALUES(1,'Vina',3);
INSERT INTO IRUL VALUES(2,'Vina',5); # This will still displayed because ID is Unique
INSERT INTO IRUL VALUES(1,'Vina',10); # This will not be displayed because ID and Name is Not Unique / Duplicated