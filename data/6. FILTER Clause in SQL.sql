## Using Filter Clause in SQL

-- Syntax
The filter clause follows an aggregate function:

-- SUM(<expression>) FILTER(WHERE <condition>)

SELECT *
FROM db_employee;

SELECT *
FROM db_dept; -- department engineering 1, marketing 4

-- JOIN
SELECT *
FROM db_employee de
JOIN db_dept dd
ON de.id = dd.id;

-- MAX Salary
SELECT MAX(salary)
FROM db_employee de
JOIN db_dept dd
ON de.department_id = dd.id
GROUP BY department;

-- MAX SALARY for Engineering
SELECT MAX(salary) AS MAX_ENG
FROM db_employee de
JOIN db_dept dd
ON de.department_id = dd.id
WHERE department = 'engineering';

-- MAX SALARY for marketing
SELECT MAX(salary) as MAX_MAR
FROM db_employee de
JOIN db_dept dd
ON de.department_id = dd.id
WHERE department = 'marketing';

-- Difference
SELECT ABS(MAX(salary) FILTER (WHERE department = 'marketing') - MAX(salary) FILTER (WHERE department = 'engineering'))
FROM db_employee de
JOIN db_dept dd
ON de.department_id = dd.id;
