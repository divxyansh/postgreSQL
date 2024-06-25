-- LEFT AND RIGHT

--LEFT (returns leftmost character of string)
SELECT LEFT('ABCD',1)

SELECT LEFT('ABC',-2)  --return all character except last 2 character

SELECT 
	LEFT(first_name,1) AS initial
FROM directors
ORDER BY 1

SELECT 
	LEFT(first_name,1) AS initials,
	COUNT(*) as total_initials
FROM directors
GROUP BY 1
ORDER BY 1


-- RIGHT (returns rightmost character of string)
SELECT RIGHT('ABCD',3)

SELECT RIGHT('ABCD',-1)  --returns every character except 1 first character

SELECT last_name, RIGHT(last_name,2)
FROM directors
WHERE RIGHT (last_name,2)='on'