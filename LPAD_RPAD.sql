--LPAD , RPAD

-- LPAD- function pads a string on left to specified length with sequence of characters
-- RPAD- fucntion pads a string on right to specified length with sequence of characters

SELECT LPAD('Database',15,'*')
SELECT RPAD('Database',15,'*')

SELECT LPAD('111',6,'A')

SELECT 
	mv.movie_name,
	r.revenues_domestic,
	LPAD('*',CAST(TRUNC(r.revenues_domestic / 10)AS INT), '*') chart
FROM movies mv
INNER JOIN movies_revenues r ON r.movie_id=mv.movie_id
ORDER BY 3 DESC
NULLS LAST