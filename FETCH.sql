--FETCH

SELECT * FROM movies
FETCH FIRST 5 ROW ONLY

--Top 5 biggest movie by movie length
SELECT * FROM movies
ORDER BY movie_length DESC NULLS LAST
FETCH FIRST 5 ROWS ONLY

--Top 5 oldest american directors
SELECT * FROM directors
WHERE nationality='American'
ORDER BY date_of_birth 
FETCH FIRST 10 ROWS ONLY

--TOP 10 youngest female actors
SELECT * FROM actors
WHERE gender='F'
ORDER BY date_of_birth DESC
FETCH FIRST 10 ROWS ONLY

--Top 5 movies from 5th record onwards by movie length
SELECT * FROM movies
ORDER BY movie_length DESC
FETCH FIRST 5 ROW ONLY
OFFSET 5