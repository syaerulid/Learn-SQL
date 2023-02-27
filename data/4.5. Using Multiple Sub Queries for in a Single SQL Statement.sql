# How to Use Multiple Sub Queries in Single SQL Statement
/* Problem
List Out the Films having the length less than the maximum length and having the rental duration equal to the minimum rental duration
*/

USE SAKILA;
SELECT *
FROM FILM;
-- Finding the Maximum Length of the Available Films
SELECT MAX(LENGTH) 
FROM FILM; # 185
-- Finding the Minimum Rental Duration of the Available Films
SELECT MIN(RENTAL_DURATION)
FROM FILM; # 3

SELECT TITLE, LENGTH, RENTAL_DURATION
FROM FILM;
-- Combine 2 Sub Query into 1
SELECT TITLE, LENGTH, RENTAL_DURATION
FROM FILM
WHERE LENGTH < (SELECT MAX(LENGTH) 
FROM FILM)
AND RENTAL_DURATION = (SELECT MIN(RENTAL_DURATION)
FROM FILM);