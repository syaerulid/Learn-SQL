# Union Operator
# One of the 4 Set Operators
USE FAZA;

CREATE TABLE TONE(ID INT);
INSERT INTO TONE VALUES(1);
INSERT INTO TONE VALUES(2);
INSERT INTO TONE VALUES(4);
SELECT *
FROM TONE;

CREATE TABLE TTWO(NUM INT);
INSERT INTO TTWO VALUES (3);
INSERT INTO TTWO VALUES (4);
INSERT INTO TTWO VALUES (5);
SELECT *
FROM TTWO;

SELECT * 
FROM TONE
UNION 
SELECT *
FROM TTWO; # This will union all value from TONE and TTWO (ID will produce 1,2,3,4,5)
# Done Example 1

DROP TABLE TONE;
DROP TABLE TTWO;
# Example 2
USE FAZA;
CREATE TABLE EMPONE(ID INT, NAME VARCHAR(15));
INSERT INTO EMPONE VALUES (1,'Erul');
INSERT INTO EMPONE VALUES (3, 'Faza');
INSERT INTO EMPONE VALUES (5, 'Gendut');
SELECT *
FROM EMPONE;

CREATE TABLE EMPTWO(CONE INT, CTWO VARCHAR(15));
INSERT INTO EMPTWO VALUES (2, 'Vina');
INSERT INTO EMPTWO VALUES (3, 'Amalia');
INSERT INTO EMPTWO VALUES(4, 'Putri');
SELECT *
FROM EMPTWO;

SELECT * 
FROM EMPONE
UNION
SELECT *
FROM EMPTWO; # this will display all union column from EMPONE AND EMPTWO

SELECT ID 
FROM EMPONE
UNION
SELECT CONE
FROM EMPTWO; # We can display some column only, as long as they have same types data

CREATE TABLE EMPTHREE(CONE INT, CTWO VARCHAR(15), CTHREE INT); # have 3 column
INSERT INTO EMPTHREE VALUES (2, 'Laila', 12);
INSERT INTO EMPTHREE VALUES (3, 'Ayzx', 10);
INSERT INTO EMPTHREE VALUES (4, 'Binar', 3);
SELECT *
FROM EMPTHREE;

SELECT ID,NAME FROM EMPONE
UNION
SELECT CONE, CTWO FROM EMPTHREE; # this will work and display all union values from two column, even emp three have 3 column in their original tables