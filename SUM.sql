-- Sum with SUM function

SELECT * FROM movies_revenues

--Total domestic revenue
SELECT SUM(revenues_domestic) FROM movies_revenues

--Total domestic revenue for all movies where domestic revenue is greater than 200
SELECT SUM(revenues_domestic) FROM movies_revenues WHERE revenues_domestic > 200

--Total movie length of all english movies
SELECT SUM(movie_length) FROM movies WHERE movie_lang='English'

--With DISTINCT
SELECT SUM(DISTINCT revenues_domestic) FROM movies_revenues