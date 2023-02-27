# Using Exists Operator with Sub Queries
USE WORLD;
# Single Queries
SELECT *
FROM COUNTRY
WHERE LIFEEXPECTANCY > 81.5;

SELECT *
FROM COUNTRY 
WHERE EXISTS (SELECT *
FROM COUNTRY
WHERE LIFEEXPECTANCY > 81.5); # Where there's life expectancy that > 81.5 then SELECT * FROM COUNTRY will be displayed

SELECT *
FROM COUNTRY 
WHERE EXISTS (SELECT *
FROM COUNTRY
WHERE LIFEEXPECTANCY > 90); # This will display all null values in all column, because there's no life expectancy that > 90 in this table