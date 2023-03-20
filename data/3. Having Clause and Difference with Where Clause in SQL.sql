## Having is Used when we need to specify some condition based on Aggregate Function

# Having Clause Statement in SQL
USE WORLD;

SELECT *
FROM COUNTRY WHERE CONTINENT = 'Asia';

SELECT *
FROM COUNTRY;

SELECT CONTINENT, COUNT(NAME) AS JUMLAH
FROM COUNTRY 
GROUP BY CONTINENT
HAVING JUMLAH < 15;

/* So,
Select >> Where Clause >> Condition
Group by Clause >> Having Clause >> Condition */

#Another Examples
SELECT 
    first_name,
    COUNT(order_details) AS JUMLAH,
    SUM(total_order_cost) AS TOTAL
FROM customers c
JOIN
orders o
ON 
c.id = o.cust_id
GROUP BY first_name
HAVING JUMLAH > 3
AND TOTAL > 100;
