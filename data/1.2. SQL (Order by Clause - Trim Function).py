#!/usr/bin/env python
# coding: utf-8

# # Order by Clause

# Purpose : 
#    - To order the retrieved recording in ascending or descending order of the provided column data (ASC/DESC)

# ## Ascending Order
SELECT *
FROM Customers
ORDER BY Country ASC;

# Default is ascending even when we don't give ASC

SELECT *
FROM Customers
ORDER BY Country ASC, City ASC;

SELECT *
FROM Customers
ORDER BY Country ASC, City DESC;
# ## Descending Order
SELECT *
FROM Customers
ORDER by Country DESC;

SELECT *
FROM Products
ORDER by Price DESC;
# # Using Between Operator With Text

# ## Between
SELECT *
FROM Customers
WHERE Country
BETWEEN 'Canada' AND 'Finland';

# This will order Alphabetically from Canada to Finland, mean C,D,E and last F

SELECT *
FROM Customers
WHERE Country
BETWEEN 'Canada' AND 'Finland'
ORDER BY Country;

These 2 produce the same result
# ## Not Between
SELECT * 
FROM Customers
WHERE Country
NOT BETWEEN 'Canada' AND 'Finland'
ORDER BY Country;

These 1 will produce result except all result that produced in (BETWEEN) before
# # In Operator

# Purpose :
#    - Simplify the process of providing multiple values to the same column name
SELECT *
FROM Products
WHERE PRICE = 18
OR PRICE = 30
OR PRICE = 10;

Simplify to this

SELECT *
FROM Products
WHERE PRICE
IN (18,30,10);

SELECT *
FROM Customers
WHERE Country
IN ('USA','Canada','UK');
# # Aliases in Place of Table Column Names

# **Note** : 
#    - Not give a change to Original Column Name
#    - The change name is temporary
SELECT CategoryID AS ID, CategoryName AS NAME
FROM Categories;SELECT CategoryID AS "Category ID", CategoryName AS "Category Name"
FROM Categories;

SELECT CategoryID AS [Category ID], CategoryName AS [Category Name]
FROM Categories;

These 2 produces the same results
# # LIMIT Keyword

# Purpose:
#    - To Improve the performance while retrieving the records from the Table having huge number of records

# In[ ]:


How many records needs to be displayed on the page at a time

SELECT *
FROM Customers
LIMIT 20;SELECT *
FROM Customers
WHERE Country = 'USA'
LIMIT 5;SELECT *
FROM Customers
WHERE Country = 'USA'
LIMIT 5,6;

After 5 Records, Display 6 Records
that's how to use it
# # Breaking a single SQL statement into multiple lines
Why ?

SQL Statement is Length
Then Understanding or reading such SQL statements will not be ready

Break the lengthy SQL statement into multiple lines

Easily Understand and Read It
# ## Lengthy, Hard to read
Select CustomerID, CustomerName, Country, City FROM Customers WHERE Country = 'France' LIMIT 3;
# ## Multiple Lines, Easy to Read
Select CustomerID, CustomerName, Country, City
FROM Customers
WHERE Country = 'France'
LIMIT 3;
# # MySQL Built-In Function

# Built-In Functions :
#    - String Functions
#         - upper()
#         - lower()
#         - length()
#         - trim()
#         - instr()
#         - substr()
#         - concat()
#         Many More
#    - Numeric Functions
#         - abs()
#         - sqrt()
#         - mod()
#         - power()
#         - truncate()
#         - greatest()
#         - least()
#         Many More
#    - Date and Time Functions
#         - current_date()
#         - current_time()
#         - now()
#         - sysdate()
#         - month()
#         - year()
#         - day()
#         Many More
#    - Aggregate Function
#         - avg()
#         - sum()
#         - min()
#         - max()
#         - count()
#         Many More

# # upper() MySQL String Function

# One of the String Category function in MySQL
# 
# Purpose : 
#    - To Convert the text undet the table Columns to upper case
SELECT 'Arun Motoori';
produce Result : Arun Motoori

SELECT upper('Arun Motoori')
produce Result : ARUN MOTOORISELECT upper(Country)
FROM Customers;

All Column Country gonna be UPPERCASE
# SELECT upper(Country) as Country, upper(City) as CITY
# FROM Customers;
# 
# Combination with Aliases for better column name

# # lower() MySQL String Function

# lower() is one of the function of MySQL which belong to String Functions Category

# lower() - Purpose
# 
#    - Is to convert the text under the table Columns to lower case

# SELECT lower('Hanari Carnes')
# 
# produce Result : hanari carnes
# 
# SELECT lower(City) as City
# FROM Customers;
# 
# All column gonna be lowercase

# # length() MySQL String Function

# length() is one of the function of MySQL which belong to String Functions Category

# Purpose:
#    - is to find the length/size of the data under the specified column name
SELECT length('Hanari Carnes') as GivenNameSize;

have 13 lengthSELECT length(Country) AS CountryLength
FROM Customers;

to know all the length of the country columnSELECT *
FROM Customers
WHERE Length(Country) = 6;

Combination with WHERE Clause and Relational Operator
# # instr() MySQL String Function

# Purpose :
#    - To Find the position of the given text in the data of the specified column
SELECT
instr('Arun Motoori', 'n') AS Position;

this will produce result position as 4SELECT instr(Country, 'e')
FROM Customers;

this will display all the result for each rows in column Country, where the position of 'e'SELECT Country, instr(Country, 'e') as Position
FROM Customers;

this will display first column as Country and second column as position for each 'e' based on country column
# # substr() MySQL String Function

# Purpose : 
#    - Is to find the portion of text from the data of the specified column
SELECT substr('Arun',2,3);

starting from position 2, takes 3 characters
produce result  = run

SELECT substr(Country, 3,6) as Portion
FROM Customers;

starting from position 3, to 6 for all column in Country will become the produce resultSELECT Country, substr(Country, 3,6) as Portion
FROM Customers;

this one create 2 column, 1 country and 1 is portionSELECT Country, substr(Country, -1, -2) as Portion
FROM Customers;

This one display 2 last character from the Country Column
# # concat() MySQL String Function

# Purpose:
#    - To add two or more column data together
SELECT concat('Arun',' ', 'Faza') AS FullName;

this will produce : Arun Faza, for ("space") you need to add ,' '

SELECT concat(FirstName,' ',LastName) as FinalName
FROM Employees;

This will produce Final Name based on FirstName + LastName

SELECT 
    FirstName, 
    LastName,
    concat(FirstName,' ',LastName) as FinalName
FROM Employees;

This one will display FirstName, LastName and last FinalName columnSELECT concat('My Full Name is', FirstName, LastName) as "Full Name"
FROM Employees;

This one we combine My Full Name is for each Full Name
so the result will Display for Example My Full Name is Arun Faza
# # trim() MySQL String Function

# Purpose :
#    - To remove the leading and trailing spaces in the Column Data
# 
SELECT length('Faza')

this one produce 4 length

SELECT length('    Faza   ')

but this one produce 11 length

those spaces will be remove using trim function
SELECT length(trim('    Faza   '))

after this the length back to 4, because spaces before and after 'Faza' already getting trimSelect CustomerName, length(trim(CustomerName))
FROM Customers
WHERE CustomerID = 92;

this will trim the space in column Customer Name where CustomerID = 92
# In[ ]:




