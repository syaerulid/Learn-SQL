# Default Integrity Constraint in SQL
# If no Value is inserted into that column, then the given / specified default will be inserted
# Example

USE FAZA;

CREATE TABLE EMPONE(ID INT, EXPERIENCE INT DEFAULT 5);

SELECT *
FROM EMPONE;

INSERT INTO EMPONE VALUES(3,12);
INSERT INTO EMPONE VALUES(2,3);
INSERT INTO EMPONE (ID) VALUES (4); # Even we don't insert anything by Default Experience will display by 5

CREATE TABLE EMPTWO(ID INT,DATEOFJOINING DATE DEFAULT '2023-02-28');

SELECT *
FROM EMPTWO;

INSERT INTO EMPTWO VALUES(4, '2023-02-01');
INSERT INTO EMPTWO (ID) VALUES(7); # This will Return 2023-02-28 as a default