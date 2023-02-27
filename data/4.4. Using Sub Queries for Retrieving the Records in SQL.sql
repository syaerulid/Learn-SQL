# How to Use Sub Query to Retrieving the Records from Multiples Tables
USE SAKILA;

SELECT * 
FROM CITY; # Country ID

SELECT *
FROM COUNTRY; # Country ID
# 1 Column from City Table
SELECT CITY 
FROM CITY;
# 1 Column from Country Table
SELECT COUNTRY
FROM COUNTRY;
# How To Combine Country and City Table with Sub Query
SELECT CITY,(SELECT COUNTRY FROM COUNTRY WHERE CITY.COUNTRY_ID = COUNTRY.COUNTRY_ID) COUNTRY
FROM CITY; # this is possible

SELECT COUNTRY,(SELECT CITY FROM CITY WHERE CITY.COUNTRY_ID = COUNTRY.COUNTRY_ID) COUNTRY
FROM CITY; # This is not possible because for Country Column = Have many CITY
