## How to View the Existing Tables in DB
## How to View the Description of the Tables
## How to delete the tables

USE WORLD;
SHOW TABLES;

#Create tables
USE FAZA;
CREATE TABLE EMPLOYEES(id int, name varchar(15), experience int);

# How to View the Description in the Tables
DESCRIBE EMPLOYEES;

# How to Create a New Table based on data from Another Table
CREATE TABLE EMP AS 
SELECT ID,NAME FROM EMPLOYEES;

# How to Delete the tables
DROP TABLE EMP;

USE WORLD;
SELECT *
FROM CITY;

# Create A New Table based on Data from Another Table
CREATE TABLE PLACE AS
SELECT ID,NAME,DISTRICT FROM CITY;

SELECT *
FROM PLACE