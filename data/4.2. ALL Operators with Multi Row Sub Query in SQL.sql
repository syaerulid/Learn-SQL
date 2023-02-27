/* Using Any Operator with Multi Row Sub Query 
Different Operators which can be used in Multi Row Sub Query
1. In
2. Any 
3. All << Now
4. Exists
*/
USE WORLD;
SELECT *
FROM COUNTRY;
# Inner Query
SELECT LifeExpectancy
FROM COUNTRY
WHERE LifeExpectancy > 60;
# This return all tables that have life Expectancy > 60
SELECT *
FROM COUNTRY WHERE 
LifeExpectancy In (SELECT LifeExpectancy
FROM COUNTRY
WHERE LifeExpectancy >= 60);
# Using ALL
SELECT *
FROM COUNTRY WHERE 
LifeExpectancy < ALL (SELECT LifeExpectancy
FROM COUNTRY
WHERE LifeExpectancy >= 60); # This one will Return All Values except >= 60