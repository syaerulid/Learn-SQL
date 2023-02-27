# Union All Operator
# Unlike Union Operator, Union All won't ignore (eliminate) the duplicates values.
USE FAZA;
CREATE TABLE TONE(ID INT);
INSERT INTO TONE VALUES(1);
INSERT INTO TONE VALUES(3);
INSERT INTO TONE VALUES(5);
SELECT *
FROM TONE;

CREATE TABLE TTWO(NUMBER INT);
INSERT INTO TTWO VALUES(2);
INSERT INTO TTWO VALUES(3);
INSERT INTO TTWO VALUES(4);
SELECT *
FROM TTWO;

SELECT ID
FROM TONE
UNION ALL
SELECT NUMBER
FROM TTWO;

# Union Eliminates the Duplicate Values
# Union All Allow the Duplicates values to be retrieves / displayed