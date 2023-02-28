# Check Integrity Constraint in SQL
USE FAZA;

CREATE TABLE EMPONE (ID INT, NAME VARCHAR(15), EXPERIENCE INT CHECK(EXPERIENCE > 5));

SELECT * 
FROM EMPONE;

INSERT INTO EMPONE VALUES(1,'Arun',12);
INSERT INTO EMPONE VALUES(2,'Faza',3); # its not meet the requirement conditions so this one will not be displayed
# Example 2
CREATE TABLE EMPTWO(ID INT, LOCATION VARCHAR(15) CHECK(LOCATION IN('India','USA','UK')));

INSERT INTO EMPTWO VALUES (1, 'India');
INSERT INTO EMPTWO VALUES (3, 'Indonesia'); # Location doesn't meet the requirement