--- UPPER, LOWER and INTCAP

--UPPER
SELECT UPPER('amazing photograph')

SELECT 
	UPPER(first_name) AS first_name,
	UPPER(last_name) AS last_name
FROM directors

--LOWER
SELECT LOWER ('Amazing PostgreSQL')

--INITCAP  (first letter of word is capitalized)
SELECT INITCAP('the world is changing with lightening speed')

SELECT INITCAP(
	CONCAT(first_name, ' ', last_name)
) AS full_name
FROM directors
ORDER BY first_name