# Joins in SQL
# Used in SQL for joining the different tables

/* Are There any condition for the tables to get joined using the Joins in SQL?
Those tables which we want to join using Joins in SQL, should have a common column
then, Records from 2 Joined Table can be retrieved */
USE FAZA;
CREATE TABLE empdetailsone(ID INT, FIRSTNAME VARCHAR(15));
INSERT INTO empdetailsone VALUES (1, 'Faza');
INSERT INTO empdetailsone VALUES (3, 'Cholifah');
INSERT INTO empdetailsone VALUES (4, 'Erul');

DELETE FROM EMPDETAILSONE WHERE ID = 5;

SELECT *
FROM empdetailsone;

CREATE TABLE empdetailstwo(ID INT, LASTNAME VARCHAR(15));
INSERT INTO EMPDETAILSTWO VALUES (1, 'Gendut');
INSERT INTO EMPDETAILSTWO VALUES (3, 'Cantik');
INSERT INTO EMPDETAILSTWO VALUES (5, 'Rochman');

SELECT *
FROM EMPDETAILSTWO;
# INNER JOIN
SELECT *
FROM EMPDETAILSONE
INNER JOIN EMPDETAILSTWO
ON EMPDETAILSONE.ID = EMPDETAILSTWO.ID; # Only Return the Similiar Value on ID Column that we use to connected two tables (1,3)

# LEFT JOIN
SELECT *
FROM EMPDETAILSONE
LEFT JOIN EMPDETAILSTWO
ON EMPDETAILSONE.ID = EMPDETAILSTWO.ID; # It Will Return All Similiar Value + All Residual Values from the left Table || EMPDETAILSONE (even not similiar)

# RIGHT JOIN
SELECT *
FROM EMPDETAILSONE
RIGHT JOIN EMPDETAILSTWO
ON EMPDETAILSONE.ID = EMPDETAILSTWO.ID; # Reverse from Left Join

SELECT *
FROM EMPDETAILSONE
FULL JOIN EMPDETAILSTWO
ON EMPDETAILSONE.ID = EMPDETAILSTWO.ID; # Return All Values From EMPDETAILSONE + EMPDETAILSTWO, doesn't matter the similiarity

# SELF JOIN
USE FAZA;
CREATE TABLE EMPDETAILS(ID INT, FIRSTNAME VARCHAR(15), LASTNAME VARCHAR (15), DEPID INT);
INSERT INTO EMPDETAILS VALUES (1,'Cholifah','Turizah',1);
INSERT INTO EMPDETAILS VALUES (2,'Nadia','Stovina',9);
INSERT INTO EMPDETAILS VALUES(3, 'Silvia','Putri',3);

SELECT *
FROM EMPDETAILS;

SELECT *
FROM EMPDETAILS O, EMPDETAILS T
WHERE O.ID = T.DEPID; # Return All Column so there will be 1 repeatable column