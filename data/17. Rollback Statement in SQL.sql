# Rollback in SQL
# Rollback is to Revert the temporary changes done on a particular table

USE FAZA;
SHOW TABLES;
SET AUTOCOMMIT = 0;

SELECT *
FROM EMPLOYEES;

DELETE
FROM EMPLOYEES; # Delete all data from the tables employees

ROLLBACK; # Return all data that already been deleted before

# If you use Commit, rollback will become no use, because it's only reverted temporary data not permanent changes