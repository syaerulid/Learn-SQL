#!/usr/bin/env python
# coding: utf-8

# # MySQL Numeric Function

# # abs() MySQL Numeric Function

# Purpose : 
#    - The abs() function will retrive absolute value (Positive value) irrespective of whether the given number is either positive number or negative number
SELECT (-9);

this will produce = -9

SELECT abs(-9);

this will produce = 9SELECT ProductName, abs(Price)
FROM Products
WHERE ProductID = 78;
# # mod() MySQL Numeric Function

# Purpose :
#    - Return the reminder value (sisa pembagian) of the numeric data of the specified column
SELECT MOD(11,2);
This will produce result : 1, because 2x5 is 10, and will give remain value 1

SELECT ProductID, mod(Quantity,3)
FROM OrderDetails;

This will produce all quantity dividing by 3, and print out the reminder value
# # greatest() and least() MySQL Numeric Function

# Purpose :
#    - Return the Greatest value of the numeric data of the specified column
SELECT Greatest(5,78,12,33,45);
this will produce 78 as the result

SELECT greatest('Faza','Syaerul','Erul')
this will produce Syaerul as the result

SELECT least(5,78,12,33,45);
this will produce 5 as the result

SELECT greatest('Faza','Syaerul','Erul')
this will produce Erul as the result
# # truncate() MySQL Numeric Function

# Purpose : 
#  - Return the numerical value with the specified number of digits after the decimal points
SELECT truncate(123.4567,2)
will produce Result : 123.45 << 45 is 2 number after decimal points
    
SELECT truncate(123.4567,8)
will produce Result : 123.45670000
    
SELECT truncate(123.4567,0)
will produce Result : 123
    
SELECT truncate(123.4567,-2)
This will define 2 number before decimal points as 0
so they will produce this result : 100

SELECT Price,truncate(Price,1)
FROM Products;
# # power() and sqrt() in MySQL Numeric Function

# Power :
#    - Perpangkatan
SELECT POWER(3,2);
will produce Result : 9
SELECT POWER (5,3);
will produce Result : 625
# SQRT :
#  - Akar dari
SELECT SQRT(9);
will produce result : 3

SELECT SQRT(625);
will produce result : 25
