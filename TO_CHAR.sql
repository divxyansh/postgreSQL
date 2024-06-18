--TO CHAR()

--Convert integer to string
SELECT TO_CHAR(
	100870,
	'9,99999'
)

--Lets view movie release date in DD-MM-YYYY format
SELECT release_date,
TO_CHAR(release_date,'DD-MM-YYYY'),
TO_CHAR(release_date,'Dy,MM,YYYY')
FROM movies

--Converting timestamp literal to a string
SELECT TO_CHAR(
	TIMESTAMP '2020-01-01 10:30:45'
	'HH24:MI:SS'
)

--Adding currency symbol to movies revenues
SELECT movie_id, revenues_domestic,TO_CHAR(revenues_domestic,'$99999D99')
FROM movies_revenues