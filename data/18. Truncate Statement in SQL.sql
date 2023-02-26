# Truncate Statement in SQL
# No matter Autocommit is 0 or 1, Truncate will permanently Deleted the Data from the Table
USE FAZA;
SELECT *
FROM xyz;

SET AUTOCOMMIT = 0;
TRUNCATE TABLE XYZ; # Even if we restart the workbench, the data will be permanently deleted if we use Truncate instead Delete