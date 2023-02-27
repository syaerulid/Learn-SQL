# Data Types
USE FAZA;
# Example Table, for knoiwing Data Types Only
# Integer Types
CREATE TABLE XYZ(a int);
INSERT INTO XYZ VALUES(18);

SELECT *
FROM XYZ;

INSERT INTO XYZ VALUES('Syaerul'); # Fail because Syaerul is not INT
INSERT INTO XYZ VALUES (1.5); # Value Equivalent or Greater than 1.5 will be converted to 2
INSERT INTO XYZ VALUES (1.499); # Value Less than 1.5 will be converted to 1
# Double Types
CREATE TABLE ABC (a double);
SELECT *
FROM ABC;

INSERT INTO ABC VALUES(6);
INSERT INTO ABC VALUES(2.5); # If we use double 2.5 will not be converted to 3
# Boolean Types
CREATE TABLE DEF (a boolean);
SELECT * 
FROM DEF;

INSERT INTO DEF VALUES (7);
INSERT INTO DEF VALUES(TRUE); # Return 1
INSERT INTO DEF VALUES(FALSE); # Return 0
INSERT INTO DEF VALUES(0);

# String Type / Varchar

CREATE TABLE GHI (a varchar(15));
SELECT *
FROM GHI;

INSERT INTO GHI VALUES ('Syaerul');
INSERT INTO GHI VALUES ('Syaerul Rochman');
INSERT INTO GHI VALUES ('Sanjuno Syaerul Rochman'); # produce error because varchar > 15
# Date Types
CREATE TABLE JKL (a date);
SELECT *
FROM JKL;
INSERT INTO JKL VALUES('1992-12-03');
# Time Types
CREATE TABLE MNO (a time);
SELECT *
FROM MNO;
INSERT INTO MNO VALUES('10:42:33');

# Datetime Types
CREATE TABLE PQR(a datetime);
SELECT *
FROM PQR;
INSERT INTO PQR VALUES('1992-12-03 10:44:16');

# Year Types
CREATE TABLE STU(a year);
INSERT INTO STU VALUES('2023');
SELECT *
FROM STU;
