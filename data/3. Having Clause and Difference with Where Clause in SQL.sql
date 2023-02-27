# Having Clause Statement in SQL
USE WORLD;

SELECT *
FROM COUNTRY WHERE CONTINENT = 'Asia';

SELECT *
FROM COUNTRY;

SELECT CONTINENT, COUNT(NAME) AS JUMLAH
FROM COUNTRY 
GROUP BY CONTINENT
HAVING JUMLAH < 15;

/* So,
Select >> Where Clause >> Condition
Group by Clause >> Having Clause >> Condition */
