---  LENGTH

SELECT LENGTH('Amazing PostgreSQL')

SELECT LENGTH('Amazing PostgreSQL 123')

SELECT LENGTH (CAST(100122 AS TEXT))

SELECT char_length('')  -- returns 0
SELECT char_length(' ')  -- returns 1
SELECT char_length(NULL)  -- retunrs null

SELECT 
	first_name || ' ' || last_name AS full_name,
	LENGTH(first_name || ' '|| last_name) full_name_length
FROM directors
ORDER BY 2 DESC