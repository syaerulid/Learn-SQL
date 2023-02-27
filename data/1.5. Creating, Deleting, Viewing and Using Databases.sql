SHOW DATABASES; #to show all databases
CREATE DATABASE FAZA; #to Create Database name FAZA
DROP DATABASE FAZA; #to Drop Database that have been Created name Faza
SELECT *
FROM sakila.actor # selecting from what database column actor is
LIMIT 10; # limit the result

USE FAZA; # choose what database we will be use
SELECT *
FROM sakila.actor;
