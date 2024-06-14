--LIMIT

--Top 5 biggest movies by movie length
SELECT * FROM movies
ORDER BY movie_length DESC
LIMIT 5

--Top 5 oldest american directors
SELECT * FROM directors
	WHERE nationality='American'
ORDER BY date_of_birth ASC 
LIMIT 5

--Top 10 youngest female actors
SELECT * FROM actors
	WHERE gender='F'
ORDER BY date_of_birth DESC
LIMIT 10

--Top 10 most domestic profitable movies
SELECT * FROM movies_revenues
ORDER BY revenues_domestic DESC NULLS LAST
LIMIT 10

--Top 10 least profitable movies
SELECT * FROM movies_revenues
ORDER BY revenues_domestic ASC 
LIMIT 10


















