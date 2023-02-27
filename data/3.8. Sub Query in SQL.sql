# Sub Query in SQL Statements
/* 
Query = SQL Statement 
Sub Query = Inner Query/Nested Query
Two Types of Sub Queries :
- Single Row Sub Query
- Multi Row Sub Query
*/
USE WORLD;
SELECT *
FROM CITY;
# Query 1
SELECT DISTRICT
FROM CITY 
WHERE Name = 'Moreno';
# Outer Query and Inner Query
SELECT * 
FROM CITY
WHERE DISTRICT=(SELECT DISTRICT
FROM CITY 
WHERE Name = 'Moreno');

# Another Example
SELECT * 
FROM COUNTRY;
# 1st Query
SELECT MIN(LifeExpectancy)
FROM COUNTRY;

SELECT *
FROM COUNTRY
WHERE LifeExpectancy = (SELECT MIN(LifeExpectancy)
FROM COUNTRY);