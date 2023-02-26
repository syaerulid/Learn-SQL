# Null Value
# Is Null
# Is not Null

USE FAZA;
SHOW TABLES;
SELECT *
FROM EMPLOYEES;
# The false one using is Null
SELECT *
FROM EMPLOYEES
WHERE EXPERIENCE = NULL; # will return nothing
# The right one using is null
SELECT *
FROM EMPLOYEES
WHERE EXPERIENCE IS NULL;

# The right one using is not null
SELECT *
FROM EMPLOYEES
WHERE EXPERIENCE IS NOT NULL; # will return all value experience that is not null