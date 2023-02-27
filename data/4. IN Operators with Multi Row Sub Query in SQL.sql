/* Using In Operator with Multi Row Sub Query 
Different Operators which can be used in Multi Row Sub Query
1. In
2. Any
3. All
4. Exists
*/
USE WORLD;
SELECT *
FROM COUNTRY;
# Inner Query
SELECT NAME
FROM COUNTRY
WHERE CONTINENT LIKE 'N%';
# Outer + Inner Query with Multiple Row Sub Query
SELECT *
FROM COUNTRY 
WHERE NAME IN (SELECT NAME
FROM COUNTRY
WHERE CONTINENT LIKE 'N%');


