-- CONCATENATION

SELECT 'HELLO' || 'WORLD' AS new_string

SELECT 'HELLO' ||' '|| 'WORLD' AS new_string

-- Combine first name and last name of actors
SELECT CONCAT(first_name,' ',last_name) AS "FULL NAME" FROM actors
ORDER BY first_name

--Print first name,last name,date of birth of all actors seperated by comma
SELECT CONCAT_WS(',',first_name,last_name,date_of_birth) FROM actors
ORDER BY first_name