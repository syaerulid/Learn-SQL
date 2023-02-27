# Sequence of using where, group by, having and order by clauses
/* 
WHERE CLAUSE
HAVING CLAUSE
GROUP BY CLAUSE
ORDER BY CLAUSE 
The order in which we have to use the above clauses in statements
Single SQL Statement but 4 Clauses
WHERE > GROUP BY > HAVING > ORDER BY */

USE WORLD;
# WHERE
SELECT * FROM COUNTRY
WHERE SurfaceArea > 100;
# GROUP BY
SELECT Continent,COUNT(NAME) FROM COUNTRY
WHERE SurfaceArea > 100
GROUP BY Continent;
# HAVING
SELECT Continent,COUNT(NAME) FROM COUNTRY
WHERE SurfaceArea > 100
GROUP BY Continent
HAVING COUNT(NAME) > 30;
# LAST ORDER BY
SELECT Continent,COUNT(NAME) FROM COUNTRY
WHERE SurfaceArea > 100
GROUP BY Continent
HAVING COUNT(NAME) > 30
ORDER BY COUNT(NAME) ASC;
