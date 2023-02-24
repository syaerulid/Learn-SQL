#!/usr/bin/env python
# coding: utf-8

# # MySQL Date and Time Functions

# # Current_date(), Current_time(), now(), sysdate()
- current_date() - Return the current date in a string format - '2023-02-24'
- curdate(); - Return the current date in a string format - '2023-02-24'

-current_time() - Return the current time - HH:MM:SS - 07:22:35
-curtime() - Return the current time - HH:MM:SS - 07:23:01
        
-now() - Return both current date and time - 2023-02-24 07:23:21
-sysdate() - Return both current date and time - 2023-02-24 07:23:37
# # year(), month(), day(), monthname(), dayname()
SELECT year('2023-02-24') as Year;
this will produce 2023

SELECT month('2023-02-24') as Month;
this will produce 2

SELECT day('2023-02-24') as Day;
this will produce 24

SELECT monthname('2023-02-24') as "Month Name";
this will produce February

SELECT dayname('2023-02-24') AS "Day Name";
this will produce Friday

SELECT *
FROM Orders
WHERE month(OrderDate)=4;

this will display all order date that month equivalent to 4

SELECT *
FROM Orders
WHERE monthname(OrderDate)='May';

this will display all order date that month equivalent to May (5)
# # MySQL Aggregate Function

# # avg(), max(), min(), count(), sum()
SELECT AVG(Price)
FROM Products;

SELECT MAX(Price)
FROM Products;

SELECT MIN(Price)
FROM Products;

SELECT COUNT(Price)
FROM Products;

SELECT COUNT(*)
FROM Products;

SELECT SUM(Price)
FROM Products;
# # Arithmetic Operator in SQL

# Divide by :
#    - Addition (+)
#    - Substraction (-)
#    - Multiplication (*)
#    - Division (/)
#    - Modulus (%)
SELECT 5+4;
Produce Result 9

SELECT 5-9;
Produce Result -4

SELECT 3*5;
Produce Result 15

SELECT 9/6;
Produce Result 1.5

SELECT 5%4;
Produce Result 1

SELECT Price,Price+10 AS "Modifier Price"
FROM Products;
this will display 2 column, 1 Original Price, 2 Modifier Price

SELECT Price,Price%10 as "Modulo Price"
FROM Products;
This will display 2 column, 1 Original Price, 2 Modulo Price
# In[ ]:




