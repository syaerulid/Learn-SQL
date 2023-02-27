# Minus Operators in SQL
SELECT *
FROM TONE; # Return 1,3,5 From ID Column

SELECT *
FROM TTWO; # Return 2,3,4, From Number Column

SELECT ID 
FROM TONE
MINUS
SELECT NUMBER 
FROM TTWO; # This will return 1,5

SELECT NUMBER
FROM TTWO
MINUS
SELECT ID FROM TONE; # This will Return 2,4

# Minus Operators is not supported in MySQL we can use Oracle SQL Instead