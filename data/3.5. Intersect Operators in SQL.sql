# Intersect Operators in SQL
# Intersect Operators will retrieve the common records from the given tables

SELECT *
FROM TONE; # 1,3,5 from ID Column

SELECT *
FROM TTWO # 2,3,5 from NUMBER COLUMN

SELECT ID FROM TONE
INTERSECT 
SELECT NUMBER FROM TTWO; # Will return 3 as output, because it's the only one value that appear in TONE and TTWO