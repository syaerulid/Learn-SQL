/* Using Any Operator with Multi Row Sub Query 
Different Operators which can be used in Multi Row Sub Query
1. In
2. Any << Mow We wil perform this
3. All
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
WHERE LifeExpectancy = 50.8);
# Using Any
SELECT *
FROM COUNTRY WHERE 
LifeExpectancy < any (SELECT LifeExpectancy
FROM COUNTRY
WHERE LifeExpectancy = 50.8); # This one return all data that have Life Expectancy < 50.8