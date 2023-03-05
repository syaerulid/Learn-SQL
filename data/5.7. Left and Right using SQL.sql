## Left and Right Using SQL
USE WORLD;
SELECT *
FROM CITY;

SELECT NAME
FROM CITY;

#DISTINCT CITY NAME
SELECT DISTINCT NAME
FROM CITY;
# left, not start with Vowels
SELECT NAME
FROM CITY
WHERE LEFT (CITY, 1)
NOT IN ('a','e','i','u','o');
# right, not end with Vowels
SELECT NAME
FROM CITY
WHERE LEFT (CITY, 1)
NOT IN ('a','e','i','u','o');

-- ALL & >75 & Order by Last three characters name
SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT (NAME, 3), ID;
