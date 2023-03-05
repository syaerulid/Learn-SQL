# Absolute in SQL + Round
-- MIN VALUE OF LAT_N
SELECT MIN(LAT_N) AS a
FROM STATION;

-- MIN VALUE OF LONG_W
SELECT MIN(LONG_W) AS b
FROM STATION;

-- MAX VALUE OF LAT_N
SELECT MAX(LAT_N) AS c
FROM STATION;

-- MAX VALUE OF LONG_W
SELECT MAX(LONG_W) AS d
FROM STATION;
--Manhattan Distance Formula
-- |x1-x2| + |y1-y2|
-- where x1 = a, x2 = c, y1 = b, y2 = d

-- Result because using a,b,c,d not working + round
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4)
FROM STATION;


