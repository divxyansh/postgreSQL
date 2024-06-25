---  TRIM, BTRIM, LTRIM and RTRIM functions

-- TRIM - removes the longest string that contains a speicific character from stirng
SELECT TRIM(LEADING FROM '   Amazing PostgreSQL'),
TRIM(TRAILING FROM 'Amazing PostgreSQL  '),
TRIM ('  Amazing PostgreSQL  ')

SELECT     --removes leading 0 from number
	TRIM(
	LEADING '0'
	FROM 
		CAST(000123456 AS TEXT)
	)

SELECT LTRIM('yummy','y')    -- returns ummy

SELECT RTRIM('yummy','y').   -- retuns yumm

SELECT BTRIM('yummy','y')    -- retunrs umm

