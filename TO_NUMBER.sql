--TO_number()

--Convert a string to number
SELECT TO_NUMBER(
	'1420.89',
	'9999.99'
)

SELECT TO_NUMBER(
	'10,625.78-',
	'99G99D99S'
)

--Formatting
SELECT TO_NUMBER(
	'$1,420.64',
	'L9G999'
)
