#!/usr/bin/env python
# coding: utf-8

# # Training SQL without Installing DBMS
# with W3Schools website : https://www.w3schools.com/sql/trysql.asp?filename=trysql_asc

# # SELECT
SELECT
    - One of the commands in SQL
    - To retrieve the data from the given tables
    
Syntax :
    SELECT * FROM TableName;SELECT * 
FROM Customers;- * means all of the data, so they will display all data from the tablesSELECT CustomerName, Country, City, PostalCode
FROM Customers;
# # DISTINCT

#  - Distinct + Select : Retrieve the unique values for the specified columns

# 1. Without Distinct
SELECT COUNTRY
FROM Customers;
# 2. With Distinct
SELECT DISTINCT Country
FROM Customers;SELECT DISTINCT Country, PostalCode
FROM Customers;

# Combination of Country and PostalCode should be unique
# # SQL is NOT SENSITIVE
All the below statements will work same irrespective of their case
1.
SELECT CustomerName, PostalCode
FROM Customers;

2. 
select customername, postalcode
from customers;

3. 
SELECT CUSTOMERNAME, POSTALCODE
FROM CUSTOMERS;

All of this 3 produce same result
# # Semicolon (;) why its Important?
SELECT *
FROM Customers; << Semicolon

Is it mandatory to end the SQL Statements with semicolon symbol?
 - For SOME RDBMS Apps its mandatory
# - Best Practice
# - Easier to translate between SQL Flavors
# - Indicates the end of a query
SELECT *
FROM Customers;

SELECT PostalCode
FROM Customers;

This statement is double run, because semicolon separate them, in SOME RDBMS without semicolon the Query will be Error
# # WHERE CLAUSE

# 1. Purpose is to filter records based on some condition
# 2. Practice and Example WHERE CLAUSE:
SELECT * 
FROM Customers
WHERE City = 'London';SELECT *
FROM CUSTOMERS
WHERE CustomerID = 9;Select CustomerName, Country, City
FROM Customers
WHERE City = 'London';Select CustomerName, Country, City
FROM Customers
WHERE PostalCode = 05021;
# # Using Relational Operators in Where Clause Condition

# Relational Operators 
# 
# - Equal Operator (=)
# - Greater Than Operator (>)
# - Less Than Operator (<)
# - Greater Than or Equal to Operator (>=)
# - Less Than or Equal to Operator (<=)
# - Not Equal Operator(<>)

# ## Equal
SELECT *
FROM Customers
WHERE CustomerID=1;
# ## Greater Than
SELECT * 
FROM Products
WHERE Price > 40;
# ## Less Than
SELECT * 
FROM Products 
WHERE Price < 30;
# ## Greater Than or Equal
SELECT *
FROM Products
Where Price >= 10;
# ## Less Than or Equal
SELECT *
FROM Products
Where Price <= 20;
# ## Not Equal
SELECT * 
FROM Products 
WHERE Price <> 19;
# # Between Operator

#    - Purpose : To filter the records in the `specified range`
Example Between 50 to 60
50,51,52,....., 60SELECT * 
FROM Products
WHERE Price 
BETWEEN 10 and 20;SELECT * 
FROM Products
WHERE PRICE >=10 
AND PRICE <=20;
# ## Reverse (Not Between)
SELECT * 
FROM Products
WHERE PRICE
NOT BETWEEN 10 and 20;

Price
# should be less than 10
# should be more than 20

SELECT *
FROM Products
WHERE PRICE < 10
OR PRICE > 20;Those two produce same result
# In[ ]:




