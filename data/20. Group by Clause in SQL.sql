-- Group By Statement in SQL 
## Group by Clause have purpose to retrieved the records according the specified column
USE WORLD;
SELECT *
FROM COUNTRY;
SELECT COUNT(NAME) as "COUNT OF COUNTRY" ,CONTINENT
FROM COUNTRY
GROUP BY CONTINENT;
# Another Example Step by Step using Group By
USE SAKILA;
SELECT *
FROM PAYMENT;

SELECT AMOUNT
FROM PAYMENT;

SELECT SUM(AMOUNT)
FROM PAYMENT;

SELECT CUSTOMER_ID,SUM(AMOUNT)
FROM PAYMENT
GROUP BY CUSTOMER_ID;