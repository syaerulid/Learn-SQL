# In Operator in SQL Statement
# Without In Operator we can only give one value in the Where Clause Condition
# For Examples
USE WORLD;
SELECT *
FROM COUNTRY
WHERE CONTINENT = 'Asia';
# With In Operator we can give more than one value in the Where Clause Condition
# For Examples
USE WORLD;
SELECT *
FROM COUNTRY
WHERE CONTINENT IN ('Asia','Europe','Oceania');

# Not In Operator will Display All Result except the Result from In Operator
USE WORLD;
SELECT *
FROM COUNTRY
WHERE CONTINENT NOT IN ('Asia','Europe','Oceania');